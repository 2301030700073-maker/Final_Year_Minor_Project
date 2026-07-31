package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.viewbinding.ViewBinding;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class DialogPlaybackParameterBinding implements ViewBinding {
    public final NewPipeTextView pitchControlModePercent;
    public final NewPipeTextView pitchControlModeSemitone;
    public final LinearLayout pitchControlModeTabs;
    public final RelativeLayout pitchPercentControl;
    public final NewPipeTextView pitchPercentCurrentText;
    public final NewPipeTextView pitchPercentMaximumText;
    public final NewPipeTextView pitchPercentMinimumText;
    public final AppCompatSeekBar pitchPercentSeekbar;
    public final NewPipeTextView pitchPercentStepDown;
    public final NewPipeTextView pitchPercentStepUp;
    public final RelativeLayout pitchSemitoneControl;
    public final NewPipeTextView pitchSemitoneCurrentText;
    public final AppCompatSeekBar pitchSemitoneSeekbar;
    public final NewPipeTextView pitchSemitoneStepDown;
    public final NewPipeTextView pitchSemitoneStepUp;
    public final ImageView pitchToogleControlModes;
    public final ScrollView rootView;
    public final View separatorCheckbox;
    public final View separatorPitch;
    public final View separatorStepSizeSelector;
    public final CheckBox skipSilenceCheckbox;
    public final NewPipeTextView stepSizeFivePercent;
    public final NewPipeTextView stepSizeOneHundredPercent;
    public final NewPipeTextView stepSizeOnePercent;
    public final NewPipeTextView stepSizeTenPercent;
    public final NewPipeTextView stepSizeTwentyFivePercent;
    public final NewPipeTextView tempoCurrentText;
    public final NewPipeTextView tempoMaximumText;
    public final AppCompatSeekBar tempoSeekbar;
    public final NewPipeTextView tempoStepDown;
    public final NewPipeTextView tempoStepUp;
    public final CheckBox unhookCheckbox;

    public DialogPlaybackParameterBinding(ScrollView scrollView, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, LinearLayout linearLayout, RelativeLayout relativeLayout, NewPipeTextView newPipeTextView3, NewPipeTextView newPipeTextView4, NewPipeTextView newPipeTextView5, AppCompatSeekBar appCompatSeekBar, NewPipeTextView newPipeTextView6, NewPipeTextView newPipeTextView7, RelativeLayout relativeLayout2, NewPipeTextView newPipeTextView8, AppCompatSeekBar appCompatSeekBar2, NewPipeTextView newPipeTextView9, NewPipeTextView newPipeTextView10, ImageView imageView, View view, View view2, View view3, CheckBox checkBox, NewPipeTextView newPipeTextView11, NewPipeTextView newPipeTextView12, NewPipeTextView newPipeTextView13, NewPipeTextView newPipeTextView14, NewPipeTextView newPipeTextView15, NewPipeTextView newPipeTextView16, NewPipeTextView newPipeTextView17, NewPipeTextView newPipeTextView18, AppCompatSeekBar appCompatSeekBar3, NewPipeTextView newPipeTextView19, NewPipeTextView newPipeTextView20, CheckBox checkBox2) {
        this.rootView = scrollView;
        this.pitchControlModePercent = newPipeTextView;
        this.pitchControlModeSemitone = newPipeTextView2;
        this.pitchControlModeTabs = linearLayout;
        this.pitchPercentControl = relativeLayout;
        this.pitchPercentCurrentText = newPipeTextView3;
        this.pitchPercentMaximumText = newPipeTextView4;
        this.pitchPercentMinimumText = newPipeTextView5;
        this.pitchPercentSeekbar = appCompatSeekBar;
        this.pitchPercentStepDown = newPipeTextView6;
        this.pitchPercentStepUp = newPipeTextView7;
        this.pitchSemitoneControl = relativeLayout2;
        this.pitchSemitoneCurrentText = newPipeTextView8;
        this.pitchSemitoneSeekbar = appCompatSeekBar2;
        this.pitchSemitoneStepDown = newPipeTextView9;
        this.pitchSemitoneStepUp = newPipeTextView10;
        this.pitchToogleControlModes = imageView;
        this.separatorCheckbox = view;
        this.separatorPitch = view2;
        this.separatorStepSizeSelector = view3;
        this.skipSilenceCheckbox = checkBox;
        this.stepSizeFivePercent = newPipeTextView11;
        this.stepSizeOneHundredPercent = newPipeTextView12;
        this.stepSizeOnePercent = newPipeTextView13;
        this.stepSizeTenPercent = newPipeTextView14;
        this.stepSizeTwentyFivePercent = newPipeTextView15;
        this.tempoCurrentText = newPipeTextView16;
        this.tempoMaximumText = newPipeTextView17;
        this.tempoSeekbar = appCompatSeekBar3;
        this.tempoStepDown = newPipeTextView19;
        this.tempoStepUp = newPipeTextView20;
        this.unhookCheckbox = checkBox2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
