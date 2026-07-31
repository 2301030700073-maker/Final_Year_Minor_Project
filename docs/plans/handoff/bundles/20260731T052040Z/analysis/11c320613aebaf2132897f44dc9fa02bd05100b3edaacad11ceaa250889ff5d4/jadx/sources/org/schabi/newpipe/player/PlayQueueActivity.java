package org.schabi.newpipe.player;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.material.appbar.AppBarLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.Optional;
import java.util.List;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.ActivityPlayerQueueControlBinding;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.event.PlayerEventListener;
import org.schabi.newpipe.player.helper.PlaybackParameterDialog;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueAdapter;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayQueueActivity extends AppCompatActivity implements PlayerEventListener, SeekBar.OnSeekBarChangeListener, View.OnClickListener, PlaybackParameterDialog.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ItemTouchHelper itemTouchHelper;
    public Menu menu;
    public Player player;
    public ActivityPlayerQueueControlBinding queueControlBinding;
    public boolean seeking;
    public boolean serviceBound;
    public DownloadDialog.AnonymousClass1 serviceConnection;

    public final void buildAudioTrackMenu() {
        Menu menu = this.menu;
        if (menu == null) {
            return;
        }
        MenuItem findItem = menu.findItem(R.id.action_audio_track);
        List list = (List) Optional.ofNullable(this.player).map(new Player$$ExternalSyntheticLambda28(7)).flatMap(new Player$$ExternalSyntheticLambda28(8)).map(new Player$$ExternalSyntheticLambda28(9)).orElse(null);
        Optional flatMap = Optional.ofNullable(this.player).flatMap(new Player$$ExternalSyntheticLambda28(10));
        if (list == null || list.size() < 2 || flatMap.isEmpty()) {
            findItem.setVisible(false);
            return;
        }
        SubMenu subMenu = findItem.getSubMenu();
        subMenu.clear();
        for (int i = 0; i < list.size(); i++) {
            subMenu.add(71, i, 0, Localization.audioTrackName(this, (AudioStream) list.get(i)));
        }
        AudioStream audioStream = (AudioStream) flatMap.get();
        String audioTrackName = Localization.audioTrackName(this, audioStream);
        findItem.setTitle(getString(R.string.play_queue_audio_track, audioTrackName));
        if (audioStream.getAudioLocale() != null) {
            audioTrackName = audioStream.getAudioLocale().getLanguage();
        }
        findItem.setTitleCondensed(audioTrackName.substring(0, Math.min(audioTrackName.length(), 2)));
        findItem.setVisible(true);
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onAudioTrackUpdate() {
        buildAudioTrackMenu();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.player == null) {
            return;
        }
        if (view.getId() == this.queueControlBinding.controlRepeat.getId()) {
            this.player.cycleNextRepeatMode();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlBackward.getId()) {
            this.player.playPrevious();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlFastRewind.getId()) {
            Player player = this.player;
            player.getClass();
            player.seekTo(player.simpleExoPlayer.getCurrentPosition() + (-PlayerHelper.retrieveSeekDurationFromPreferences(player)));
            player.triggerProgressUpdate();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlPlayPause.getId()) {
            this.player.playPause();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlFastForward.getId()) {
            Player player2 = this.player;
            player2.getClass();
            player2.seekTo(player2.simpleExoPlayer.getCurrentPosition() + PlayerHelper.retrieveSeekDurationFromPreferences(player2));
            player2.triggerProgressUpdate();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlForward.getId()) {
            this.player.playNext();
            return;
        }
        if (view.getId() == this.queueControlBinding.controlShuffle.getId()) {
            this.player.toggleShuffleModeEnabled();
        } else if (view.getId() == this.queueControlBinding.metadata.getId()) {
            scrollToSelected();
        } else if (view.getId() == this.queueControlBinding.liveSync.getId()) {
            this.player.seekToDefault();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Options.Companion.setTheme(this, ServiceHelper.getSelectedServiceId(this));
        View inflate = getLayoutInflater().inflate(R.layout.activity_player_queue_control, (ViewGroup) null, false);
        View findChildViewById = Options.Companion.findChildViewById(R.id.anchor, inflate);
        int i = R.id.appbar;
        if (((AppBarLayout) Options.Companion.findChildViewById(R.id.appbar, inflate)) != null) {
            i = R.id.artist_name;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.artist_name, inflate);
            if (newPipeTextView != null) {
                i = R.id.control_backward;
                AppCompatImageButton appCompatImageButton = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.control_backward, inflate);
                if (appCompatImageButton != null) {
                    i = R.id.control_fast_forward;
                    ImageButton imageButton = (ImageButton) Options.Companion.findChildViewById(R.id.control_fast_forward, inflate);
                    if (imageButton != null) {
                        i = R.id.control_fast_rewind;
                        ImageButton imageButton2 = (ImageButton) Options.Companion.findChildViewById(R.id.control_fast_rewind, inflate);
                        if (imageButton2 != null) {
                            i = R.id.control_forward;
                            AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.control_forward, inflate);
                            if (appCompatImageButton2 != null) {
                                i = R.id.control_play_pause;
                                ImageButton imageButton3 = (ImageButton) Options.Companion.findChildViewById(R.id.control_play_pause, inflate);
                                if (imageButton3 != null) {
                                    i = R.id.control_progress_bar;
                                    ProgressBar progressBar = (ProgressBar) Options.Companion.findChildViewById(R.id.control_progress_bar, inflate);
                                    if (progressBar != null) {
                                        i = R.id.control_repeat;
                                        ImageButton imageButton4 = (ImageButton) Options.Companion.findChildViewById(R.id.control_repeat, inflate);
                                        if (imageButton4 != null) {
                                            i = R.id.control_shuffle;
                                            ImageButton imageButton5 = (ImageButton) Options.Companion.findChildViewById(R.id.control_shuffle, inflate);
                                            if (imageButton5 != null) {
                                                i = R.id.current_time;
                                                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.current_time, inflate);
                                                if (newPipeTextView2 != null) {
                                                    i = R.id.end_time;
                                                    NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.end_time, inflate);
                                                    if (newPipeTextView3 != null) {
                                                        i = R.id.live_sync;
                                                        NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.live_sync, inflate);
                                                        if (newPipeTextView4 != null) {
                                                            RelativeLayout relativeLayout = (RelativeLayout) inflate;
                                                            i = R.id.metadata;
                                                            LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.metadata, inflate);
                                                            if (linearLayout != null) {
                                                                i = R.id.play_queue;
                                                                RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.play_queue, inflate);
                                                                if (recyclerView != null) {
                                                                    i = R.id.progress_bar;
                                                                    if (((LinearLayout) Options.Companion.findChildViewById(R.id.progress_bar, inflate)) != null) {
                                                                        i = R.id.seek_bar;
                                                                        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) Options.Companion.findChildViewById(R.id.seek_bar, inflate);
                                                                        if (appCompatSeekBar != null) {
                                                                            i = R.id.seek_display;
                                                                            NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.seek_display, inflate);
                                                                            if (newPipeTextView5 != null) {
                                                                                i = R.id.song_name;
                                                                                NewPipeTextView newPipeTextView6 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.song_name, inflate);
                                                                                if (newPipeTextView6 != null) {
                                                                                    i = R.id.toolbar;
                                                                                    Toolbar toolbar = (Toolbar) Options.Companion.findChildViewById(R.id.toolbar, inflate);
                                                                                    if (toolbar != null) {
                                                                                        this.queueControlBinding = new ActivityPlayerQueueControlBinding(relativeLayout, findChildViewById, newPipeTextView, appCompatImageButton, imageButton, imageButton2, appCompatImageButton2, imageButton3, progressBar, imageButton4, imageButton5, newPipeTextView2, newPipeTextView3, newPipeTextView4, linearLayout, recyclerView, appCompatSeekBar, newPipeTextView5, newPipeTextView6, toolbar);
                                                                                        setContentView(relativeLayout);
                                                                                        setSupportActionBar(this.queueControlBinding.toolbar);
                                                                                        int i2 = 1;
                                                                                        if (getSupportActionBar() != null) {
                                                                                            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                                                                                            getSupportActionBar().setTitle(R.string.title_activity_play_queue);
                                                                                        }
                                                                                        this.serviceConnection = new DownloadDialog.AnonymousClass1(this, i2);
                                                                                        Intent intent = new Intent(this, (Class<?>) PlayerService.class);
                                                                                        intent.setAction("bind_player_holder_action");
                                                                                        boolean bindService = bindService(intent, this.serviceConnection, 1);
                                                                                        if (!bindService) {
                                                                                            unbindService(this.serviceConnection);
                                                                                        }
                                                                                        this.serviceBound = bindService;
                                                                                        return;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        this.menu = menu;
        getMenuInflater().inflate(R.menu.menu_play_queue, menu);
        getMenuInflater().inflate(R.menu.menu_play_queue_bg, menu);
        buildAudioTrackMenu();
        onMaybeMuteChanged();
        Player player = this.player;
        if (player == null) {
            return true;
        }
        onPlaybackParameterChanged(player.getPlaybackParameters());
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        unbind();
    }

    public final void onMaybeMuteChanged() {
        Menu menu = this.menu;
        if (menu == null || this.player == null) {
            return;
        }
        MenuItem findItem = menu.findItem(R.id.action_mute);
        findItem.setTitle(this.player.isMuted() ? R.string.unmute : R.string.mute);
        findItem.setIcon(this.player.isMuted() ? R.drawable.ic_volume_off : R.drawable.ic_volume_up);
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onMetadataUpdate(StreamInfo streamInfo, PlayQueue playQueue) {
        if (streamInfo != null) {
            this.queueControlBinding.songName.setText(streamInfo.getName());
            this.queueControlBinding.artistName.setText(streamInfo.getUploaderName());
            this.queueControlBinding.endTime.setVisibility(8);
            this.queueControlBinding.liveSync.setVisibility(8);
            int ordinal = streamInfo.getStreamType().ordinal();
            if (ordinal == 3 || ordinal == 4) {
                this.queueControlBinding.liveSync.setVisibility(0);
            } else {
                this.queueControlBinding.endTime.setVisibility(0);
            }
            scrollToSelected();
        }
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            return true;
        }
        if (itemId == R.id.action_append_playlist) {
            PlaylistDialog.showForPlayQueue(this.player, getSupportFragmentManager());
            return true;
        }
        if (itemId == R.id.action_playback_speed) {
            if (this.player != null) {
                PlaybackParameterDialog.newInstance(r10.getPlaybackParameters().speed, this.player.getPlaybackParameters().pitch, this.player.getPlaybackSkipSilence(), this).show(getSupportFragmentManager(), "PlayQueueActivity");
                return true;
            }
        } else {
            if (itemId == R.id.action_mute) {
                this.player.toggleMute();
                return true;
            }
            if (itemId == R.id.action_system_audio) {
                startActivity(new Intent("android.settings.SOUND_SETTINGS"));
                return true;
            }
            if (itemId == R.id.action_switch_main) {
                this.player.setRecovery();
                SQLite.playOnMainPlayer(this, this.player.playQueue, true);
                return true;
            }
            if (itemId == R.id.action_switch_popup) {
                if (Utility.isPopupEnabledElseAsk(this)) {
                    this.player.setRecovery();
                    SQLite.playOnPopupPlayer(this, this.player.playQueue, true);
                    return true;
                }
            } else {
                if (itemId == R.id.action_switch_background) {
                    this.player.setRecovery();
                    SQLite.playOnBackgroundPlayer(this, this.player.playQueue, true);
                    return true;
                }
                if (menuItem.getGroupId() != 71) {
                    return super.onOptionsItemSelected(menuItem);
                }
                int itemId2 = menuItem.getItemId();
                MediaItemTag mediaItemTag = this.player.currentMetadata;
                if (mediaItemTag != null) {
                    mediaItemTag.getMaybeAudioTrack().ifPresent(new PlayQueueActivity$$ExternalSyntheticLambda4(this, itemId2));
                    return true;
                }
            }
        }
        return true;
    }

    public final void onPlaybackParameterChanged(PlaybackParameters playbackParameters) {
        Menu menu;
        if (playbackParameters == null || (menu = this.menu) == null || this.player == null) {
            return;
        }
        menu.findItem(R.id.action_playback_speed).setTitle(PlayerHelper.formatSpeed(playbackParameters.speed));
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onPlaybackUpdate(int i, int i2, boolean z, PlaybackParameters playbackParameters) {
        ImageButton imageButton = this.queueControlBinding.controlPlayPause;
        if (i == 124) {
            imageButton.setImageResource(R.drawable.ic_pause);
            imageButton.setContentDescription(getString(R.string.pause));
        } else if (i == 126) {
            imageButton.setImageResource(R.drawable.ic_play_arrow);
            imageButton.setContentDescription(getString(R.string.play));
        } else if (i == 128) {
            imageButton.setImageResource(R.drawable.ic_replay);
            imageButton.setContentDescription(getString(R.string.replay));
        }
        if (i == 124 || i == 126 || i == 128) {
            this.queueControlBinding.controlPlayPause.setClickable(true);
            this.queueControlBinding.controlPlayPause.setVisibility(0);
            this.queueControlBinding.controlProgressBar.setVisibility(8);
        } else {
            this.queueControlBinding.controlPlayPause.setClickable(false);
            this.queueControlBinding.controlPlayPause.setVisibility(4);
            this.queueControlBinding.controlProgressBar.setVisibility(0);
        }
        if (i2 == 0) {
            this.queueControlBinding.controlRepeat.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_off);
        } else if (i2 == 1) {
            this.queueControlBinding.controlRepeat.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_one);
        } else if (i2 == 2) {
            this.queueControlBinding.controlRepeat.setImageResource(com.google.android.exoplayer2.ui.R.drawable.exo_controls_repeat_all);
        }
        this.queueControlBinding.controlShuffle.setImageAlpha(z ? 255 : 77);
        onPlaybackParameterChanged(playbackParameters);
        onMaybeMuteChanged();
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        if (this.player != null) {
            this.menu.findItem(R.id.action_switch_popup).setVisible(!(this.player.playerType == PlayerType.POPUP));
            this.menu.findItem(R.id.action_switch_background).setVisible(!(this.player.playerType == PlayerType.AUDIO));
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            String durationString = Localization.getDurationString(i / 1000);
            this.queueControlBinding.currentTime.setText(durationString);
            this.queueControlBinding.seekDisplay.setText(durationString);
        }
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onProgressUpdate(int i, int i2, int i3) {
        this.queueControlBinding.seekBar.setSecondaryProgress((int) ((i3 / 100.0f) * r0.getMax()));
        this.queueControlBinding.seekBar.setMax(i2);
        this.queueControlBinding.endTime.setText(Localization.getDurationString(i2 / 1000));
        if (!this.seeking) {
            this.queueControlBinding.seekBar.setProgress(i);
            this.queueControlBinding.currentTime.setText(Localization.getDurationString(i / 1000));
        }
        if (this.player != null) {
            this.queueControlBinding.liveSync.setClickable(!r4.isLiveEdge());
        }
        ViewGroup.LayoutParams layoutParams = this.queueControlBinding.currentTime.getLayoutParams();
        layoutParams.width = this.queueControlBinding.endTime.getWidth();
        this.queueControlBinding.currentTime.setLayoutParams(layoutParams);
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onQueueUpdate(PlayQueue playQueue) {
        if (playQueue == null) {
            this.queueControlBinding.playQueue.setAdapter(null);
            return;
        }
        PlayQueueAdapter playQueueAdapter = new PlayQueueAdapter(playQueue);
        playQueueAdapter.playQueueItemBuilder.onItemClickListener = new VideoPlayerUi.AnonymousClass1(this, 7);
        this.queueControlBinding.playQueue.setAdapter(playQueueAdapter);
    }

    @Override // org.schabi.newpipe.player.event.PlayerEventListener
    public final void onServiceStopped() {
        unbind();
        finish();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.seeking = true;
        this.queueControlBinding.seekDisplay.setVisibility(0);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        Player player = this.player;
        if (player != null) {
            player.seekTo(seekBar.getProgress());
        }
        this.queueControlBinding.seekDisplay.setVisibility(8);
        this.seeking = false;
    }

    public final void scrollToSelected() {
        Player player = this.player;
        if (player == null) {
            return;
        }
        int index = player.playQueue.getIndex();
        int i = 0;
        if (this.queueControlBinding.playQueue.getLayoutManager() instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.queueControlBinding.playQueue.getLayoutManager();
            View findOneVisibleChild = linearLayoutManager.findOneVisibleChild(0, linearLayoutManager.getChildCount(), false);
            i = findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild);
        }
        int abs = Math.abs(index - i);
        ActivityPlayerQueueControlBinding activityPlayerQueueControlBinding = this.queueControlBinding;
        if (abs < 80) {
            activityPlayerQueueControlBinding.playQueue.smoothScrollToPosition(index);
        } else {
            activityPlayerQueueControlBinding.playQueue.scrollToPosition(index);
        }
    }

    public final void unbind() {
        if (this.serviceBound) {
            unbindService(this.serviceConnection);
            this.serviceBound = false;
            Player player = this.player;
            if (player != null && player.activityListener == this) {
                player.activityListener = null;
            }
            onQueueUpdate(null);
            ItemTouchHelper itemTouchHelper = this.itemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.attachToRecyclerView(null);
            }
            this.itemTouchHelper = null;
            this.player = null;
        }
    }

    @Override // org.schabi.newpipe.player.helper.PlaybackParameterDialog.Callback
    public final void onPlaybackParameterChanged(float f, float f2, boolean z) {
        Player player = this.player;
        if (player != null) {
            player.setPlaybackParameters(f, f2, z);
            onPlaybackParameterChanged(this.player.getPlaybackParameters());
        }
    }
}
