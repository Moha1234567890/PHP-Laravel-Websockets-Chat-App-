<div>

  @forelse($conversations as $conversation)
  <a href="{{ route('show', $conversation) }}" class="list-group-item list-group-item-action rounded-0 {{ \Str::contains(request()->path(), $conversation->uuid) ? 'active text-white' : 'list-group-item-light' }}">
      <div class="media"><img src="https://image.freepik.com/free-vector/businessman-character-avatar-icon-vector-illustration-design_24877-18271.jpg" alt="{{ $conversation->name  }}" width="50" class="rounded-circle">
        <div class="media-body ml-4">
          <div class="d-flex align-items-center justify-content-between mb-1">
            <h6 class="mb-0">{{ $conversation->name  }}</h6><small class="small font-weight-bold">{{ \Carbon\Carbon::parse($conversation->messages->first()->created_at)->format('n M') }}</small>
          </div>
          <p class="font-italic mb-0 text-small">

            @if(!auth()->user()->hasRead($conversation))
            <span class="{{ \Str::contains(request()->path(), $conversation->uuid) ? 'bg-white' : 'bg-primary' }} mr-2 rounded-circle" style="display: inline-table; width: 10px; height: 10px;"></span>

            @endif
            {{ $conversation->messages->first()->body }}
          </p>
        </div>
      </div>
    </a>
    @empty
    <div class="text-muted">
        no messages yet
    </div>

    @endforelse

    {{-- <a href="#" class="list-group-item list-group-item-action list-group-item-light rounded-0">
      <div class="media"><img src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg" alt="user" width="50" class="rounded-circle">
        <div class="media-body ml-4">
          <div class="d-flex align-items-center justify-content-between mb-1">
            <h6 class="mb-0">Jason Doe</h6><small class="small font-weight-bold">14 Dec</small>
          </div>
          <p class="font-italic text-muted mb-0 text-small">Lorem ipsum dolor sit amet, consectetur. incididunt ut labore.</p>
        </div>
      </div>
    </a> --}}
</div>