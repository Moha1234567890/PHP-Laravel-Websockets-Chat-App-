
<div class="media w-50 mb-3"><img src="https://image.freepik.com/free-vector/businessman-character-avatar-icon-vector-illustration-design_24877-18271.jpg" alt="user" width="50" class="rounded-circle">
    <div class="media-body ml-3">
      <div class="bg-light rounded py-2 px-3 mb-2">
        <p class="text-small mb-0 text-muted">{{ $message->body }}</p>
      </div>
       <p class="small text-muted">{{ $message->created_at->diffForHumans() }}</p> 
    </div>
</div>

