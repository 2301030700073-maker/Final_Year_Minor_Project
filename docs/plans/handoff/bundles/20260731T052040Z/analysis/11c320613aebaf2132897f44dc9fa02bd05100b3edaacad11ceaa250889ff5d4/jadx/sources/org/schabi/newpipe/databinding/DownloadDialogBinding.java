package org.schabi.newpipe.databinding;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import androidx.viewbinding.ViewBinding;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DownloadDialogBinding implements ViewBinding {
    public final RadioButton audioButton;
    public final Spinner audioStreamSpinner;
    public final NewPipeTextView audioTrackPresentInVideoText;
    public final Spinner audioTrackSpinner;
    public final NewPipeEditText fileName;
    public final Spinner qualitySpinner;
    public final RelativeLayout rootView;
    public final RadioButton subtitleButton;
    public final SeekBar threads;
    public final NewPipeTextView threadsCount;
    public final Printer toolbarLayout;
    public final RadioGroup videoAudioGroup;
    public final RadioButton videoButton;

    public DownloadDialogBinding(RelativeLayout relativeLayout, RadioButton radioButton, Spinner spinner, NewPipeTextView newPipeTextView, Spinner spinner2, NewPipeEditText newPipeEditText, Spinner spinner3, RadioButton radioButton2, SeekBar seekBar, NewPipeTextView newPipeTextView2, Printer printer, RadioGroup radioGroup, RadioButton radioButton3) {
        this.rootView = relativeLayout;
        this.audioButton = radioButton;
        this.audioStreamSpinner = spinner;
        this.audioTrackPresentInVideoText = newPipeTextView;
        this.audioTrackSpinner = spinner2;
        this.fileName = newPipeEditText;
        this.qualitySpinner = spinner3;
        this.subtitleButton = radioButton2;
        this.threads = seekBar;
        this.threadsCount = newPipeTextView2;
        this.toolbarLayout = printer;
        this.videoAudioGroup = radioGroup;
        this.videoButton = radioButton3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.rootView;
    }
}
