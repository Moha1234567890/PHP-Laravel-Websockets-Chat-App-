


<form action="#" class="bg-light"
       x-data="ConversationReplayState()"
      wire:submit.prevent="replay"
       x-on:keydown.enter="submit"
       enctype="multipart/form-data"
       >
    <div class="input-group">
      <input
       type="text" 
       placeholder="Type a message"
       aria-describedby="button-addon2" 
       class="form-control rounded-0 border-0 py-4 bg-light"
       wire:model="body"
       x-on:keydown.enter="submit"

       >
      <div class="input-group-append">
        <button id="button-addon1" type="button" x-on:click="attach" class="btn btn-link"> <i class="fa fa-paperclip file-browser"></i></button>
        <input type="file" id="file_upload_id" wire:model="attachment" name="attachment" style="display: none">
        <button id="button-addon2" type="submit" class="btn btn-link"> <i class="fa fa-paper-plane"></i></button>
      </div>
    </div>
  </form>

<script type="application/javascript">
    function ConversationReplayState() {
        return {
          attach () {
                document.getElementById('file_upload_id').click();
            },
            submit () {
                this.$refs.submit.click()
            }
        }
       
    }
</script>
