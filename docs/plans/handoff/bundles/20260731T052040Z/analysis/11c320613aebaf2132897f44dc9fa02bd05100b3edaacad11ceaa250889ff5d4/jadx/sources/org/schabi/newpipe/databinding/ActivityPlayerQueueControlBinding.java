package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class ActivityPlayerQueueControlBinding implements ViewBinding {
    public final View anchor;
    public final NewPipeTextView artistName;
    public final AppCompatImageButton controlBackward;
    public final ImageButton controlFastForward;
    public final ImageButton controlFastRewind;
    public final AppCompatImageButton controlForward;
    public final ImageButton controlPlayPause;
    public final ProgressBar controlProgressBar;
    public final ImageButton controlRepeat;
    public final ImageButton controlShuffle;
    public final NewPipeTextView currentTime;
    public final NewPipeTextView endTime;
    public final NewPipeTextView liveSync;
    public final LinearLayout metadata;
    public final RecyclerView playQueue;
    public final RelativeLayout rootView;
    public final AppCompatSeekBar seekBar;
    public final NewPipeTextView seekDisplay;
    public final NewPipeTextView songName;
    public final Toolbar toolbar;

    public ActivityPlayerQueueControlBinding(RelativeLayout relativeLayout, View view, NewPipeTextView newPipeTextView, AppCompatImageButton appCompatImageButton, ImageButton imageButton, ImageButton imageButton2, AppCompatImageButton appCompatImageButton2, ImageButton imageButton3, ProgressBar progressBar, ImageButton imageButton4, ImageButton imageButton5, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3, NewPipeTextView newPipeTextView4, LinearLayout linearLayout, RecyclerView recyclerView, AppCompatSeekBar appCompatSeekBar, NewPipeTextView newPipeTextView5, NewPipeTextView newPipeTextView6, Toolbar toolbar) {
        this.rootView = relativeLayout;
        this.anchor = view;
        this.artistName = newPipeTextView;
        this.controlBackward = appCompatImageButton;
        this.controlFastForward = imageButton;
        this.controlFastRewind = imageButton2;
        this.controlForward = appCompatImageButton2;
        this.controlPlayPause = imageButton3;
        this.controlProgressBar = progressBar;
        this.controlRepeat = imageButton4;
        this.controlShuffle = imageButton5;
        this.currentTime = newPipeTextView2;
        this.endTime = newPipeTextView3;
        this.liveSync = newPipeTextView4;
        this.metadata = linearLayout;
        this.playQueue = recyclerView;
        this.seekBar = appCompatSeekBar;
        this.seekDisplay = newPipeTextView5;
        this.songName = newPipeTextView6;
        this.toolbar = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
