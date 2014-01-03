should = require 'should'
path = require 'path'
fs = require 'fs'
accord = require 'accord'
axis = require '../'

# utilities

test_path = path.join(__dirname, 'fixtures')

compile = (p) ->
  accord.load('stylus').renderFile(p, { use: axis() })

match_expected = (out, p, done) ->
  # console.log out
  expected_path = path.join(path.dirname(p), path.basename(p, '.styl')) + '.css'
  if not fs.existsSync(expected_path) then return done('"expected" file doesnt exist')
  expected_contents = fs.readFileSync(expected_path, 'utf8')
  out.should.eql(expected_contents)
  done()

compile_and_match = (p, done) ->
  compile(p).then((out) => match_expected(out, p, done))

# tests

describe 'buttons', ->

  before -> @path = path.join(test_path, 'buttons')

  it 'button', (done) ->
    compile_and_match(path.join(@path, 'button.styl'), done)

  it 'glossy-button', (done) ->
    compile_and_match(path.join(@path, 'glossy-button.styl'), done)

describe 'code', ->

  before -> @path = path.join(test_path, 'code')

  it 'code', (done) ->
    compile_and_match(path.join(@path, 'code.styl'), done)

  it 'pre', (done) ->
    compile_and_match(path.join(@path, 'pre.styl'), done)

describe 'forms', ->

  before -> @path = path.join(test_path, 'forms')

  it 'input', (done) ->
    compile_and_match(path.join(@path, 'input.styl'), done)

  it 'input-search', (done) ->
      compile_and_match(path.join(@path, 'input-search.styl'), done)

  it 'input-disabled', (done) ->
      compile_and_match(path.join(@path, 'input-disabled.styl'), done)

  it 'label', (done) ->
      compile_and_match(path.join(@path, 'label.styl'), done)

  it 'field', (done) ->
      compile_and_match(path.join(@path, 'field.styl'), done)

  it 'input-error', (done) ->
      compile_and_match(path.join(@path, 'input-error.styl'), done)

  it 'field-error', (done) ->
      compile_and_match(path.join(@path, 'field-error.styl'), done)

  it 'input-warning', (done) ->
      compile_and_match(path.join(@path, 'input-warning.styl'), done)

  it 'field-warning', (done) ->
      compile_and_match(path.join(@path, 'field-warning.styl'), done)

  it 'input-success', (done) ->
      compile_and_match(path.join(@path, 'input-success.styl'), done)

  it 'field-success', (done) ->
      compile_and_match(path.join(@path, 'field-success.styl'), done)

describe 'gradients', ->

  before -> @path = path.join(test_path, 'gradients')

  it 'gradient', (done) ->
    compile_and_match(path.join(@path, 'gradient.styl'), done)

  it 'image-gradient', (done) ->
    compile_and_match(path.join(@path, 'image-gradient.styl'), done)

describe 'interaction', ->

  before -> @path = path.join(test_path, 'interaction')

  it 'hover-darken', (done) ->
    compile_and_match(path.join(@path, 'hover-darken.styl'), done)

  it 'hover-lighten', (done) ->
    compile_and_match(path.join(@path, 'hover-lighten.styl'), done)

  it 'hover-underline', (done) ->
    compile_and_match(path.join(@path, 'hover-underline.styl'), done)

  it 'hover-pop', (done) ->
    compile_and_match(path.join(@path, 'hover-pop.styl'), done)

  it 'hover-fade', (done) ->
    compile_and_match(path.join(@path, 'hover-fade.styl'), done)

  it 'hover-color', (done) ->
    compile_and_match(path.join(@path, 'hover-color.styl'), done)

describe 'tables', ->

  before -> @path = path.join(test_path, 'tables')

  it 'table-styles', (done) ->
    compile_and_match(path.join(@path, 'table.styl'), done)

describe 'typography', ->

  before -> @path = path.join(test_path, 'typography')

  it 'text-margin', (done) ->
    compile_and_match(path.join(@path, 'text-margin.styl'), done)

  it 'paragraph', (done) ->
    compile_and_match(path.join(@path, 'paragraph.styl'), done)

  it 'fs', (done) ->
    compile_and_match(path.join(@path, 'fs.styl'), done)

  it 'cases', (done) ->
    compile_and_match(path.join(@path, 'cases.styl'), done)

  it 'headlines', (done) ->
    compile_and_match(path.join(@path, 'headlines.styl'), done)

  it 'small', (done) ->
    compile_and_match(path.join(@path, 'small.styl'), done)

  it 'link', (done) ->
    compile_and_match(path.join(@path, 'link.styl'), done)

  it 'text-selection', (done) ->
    compile_and_match(path.join(@path, 'text-select.styl'), done)

  it 'lists', (done) ->
    compile_and_match(path.join(@path, 'lists.styl'), done)

  it 'blockquo', (done) ->
    compile_and_match(path.join(@path, 'blockquo.styl'), done)

  it 'hyphenation', (done) ->
    compile_and_match(path.join(@path, 'hyphenation.styl'), done)

describe 'ui', ->
describe 'utilities', ->
describe 'vendor', ->
describe 'vertical-rhythm', ->
