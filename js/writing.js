tinymce.init({
  encoding: 'xml',
  selector: 'textarea.main',
  plugins: 'mentions anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount checklist mediaembed casechange export formatpainter pageembed permanentpen footnotes advtemplate advtable advcode editimage tableofcontents mergetags powerpaste tinymcespellchecker autocorrect a11ychecker typography inlinecss',
  toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table mergetags | align lineheight | tinycomments | checklist numlist bullist indent outdent | emoticons charmap | removeformat',
  file_picker_types: 'image',
  height: '400px',
  automatic_uploads: true,
  file_picker_callback: (cb, value, meta) => {
const input = document.createElement('input');
input.setAttribute('type', 'file');
input.setAttribute('accept', 'image/*');

input.addEventListener('change', (e) => {
  const file = e.target.files[0];

  const reader = new FileReader();
  reader.addEventListener('load', () => {
    /*
      Note: Now we need to register the blob in TinyMCEs image blob
      registry. In the next release this part hopefully won't be
      necessary, as we are looking to handle it internally.
    */
    const id = 'blobid' + (new Date()).getTime();
    const blobCache =  tinymce.activeEditor.editorUpload.blobCache;
    const base64 = reader.result.split(',')[1];
    const blobInfo = blobCache.create(id, file, base64);
    blobCache.add(blobInfo);

    /* call the callback and populate the Title field with the file name */
    cb(blobInfo.blobUri(), { title: file.name });
  });
  reader.readAsDataURL(file);
});

input.click();
},
});

tinymce.init({
  encoding: 'xml',
  selector: 'textarea',
  plugins: ' tinymcespellchecker autocorrect a11ychecker typography inlinecss',
  toolbar: 'fontfamily fontsize | bold italic underline strikethrough',
  height: '180px'
})


