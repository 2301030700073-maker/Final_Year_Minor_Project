package org.schabi.newpipe.player.helper;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.DialogFragment;
import androidx.preference.PreferenceManager;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.livefront.bridge.Bridge;
import j$.util.DesugarCollections;
import j$.util.Map;
import j$.util.Objects;
import j$.util.function.DoubleConsumer$CC;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleSupplier;
import kotlin.text.UStringsKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import okio.Path;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DialogPlaybackParameterBinding;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.util.SimpleOnSeekBarChangeListener;
import org.schabi.newpipe.util.SliderStrategy;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class PlaybackParameterDialog extends DialogFragment {
    public static final SliderStrategy.Quadratic QUADRATIC_STRATEGY = new SliderStrategy.Quadratic();
    public static final Path.Companion SEMITONE_STRATEGY = new Path.Companion(11);
    public DialogPlaybackParameterBinding binding;
    public Callback callback;
    double initialTempo = 1.0d;
    double initialPitchPercent = 1.0d;
    boolean initialSkipSilence = false;
    double tempo = 1.0d;
    double pitchPercent = 1.0d;
    boolean skipSilence = false;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Callback {
        void onPlaybackParameterChanged(float f, float f2, boolean z);
    }

    public static PlaybackParameterDialog newInstance(double d, double d2, boolean z, Callback callback) {
        PlaybackParameterDialog playbackParameterDialog = new PlaybackParameterDialog();
        playbackParameterDialog.callback = callback;
        playbackParameterDialog.initialTempo = d;
        playbackParameterDialog.initialPitchPercent = d2;
        playbackParameterDialog.initialSkipSilence = z;
        playbackParameterDialog.tempo = d;
        playbackParameterDialog.pitchPercent = d2;
        playbackParameterDialog.skipSilence = z;
        return playbackParameterDialog;
    }

    public static void setText(TextView textView, DoubleFunction doubleFunction, double d) {
        Objects.requireNonNull(textView);
        textView.setText((CharSequence) doubleFunction.apply(d));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        if (r2 > 3.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void changePitchControlMode(boolean r8) {
        /*
            r7 = this;
            java.util.Map r0 = r7.getPitchControlModeComponentMappings()
            org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda9 r1 = new org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda9
            r2 = 2
            r1.<init>(r7, r2)
            j$.util.Map.EL.forEach(r0, r1)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r8)
            java.lang.Object r0 = r0.get(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r0 == 0) goto L3f
            android.graphics.drawable.LayerDrawable r3 = new android.graphics.drawable.LayerDrawable
            android.content.Context r4 = r7.requireContext()
            r5 = 2130968965(0x7f040185, float:1.7546599E38)
            android.graphics.drawable.Drawable r4 = okio.Options.Companion.resolveDrawable(r4, r5)
            android.content.Context r5 = r7.requireContext()
            r6 = 16843534(0x101030e, float:2.369575E-38)
            android.graphics.drawable.Drawable r5 = okio.Options.Companion.resolveDrawable(r5, r6)
            android.graphics.drawable.Drawable[] r2 = new android.graphics.drawable.Drawable[r2]
            r2[r1] = r4
            r4 = 1
            r2[r4] = r5
            r3.<init>(r2)
            r0.setBackground(r3)
        L3f:
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r0 = r7.binding
            android.widget.RelativeLayout r0 = r0.pitchPercentControl
            r2 = 8
            if (r8 == 0) goto L49
            r3 = r2
            goto L4a
        L49:
            r3 = r1
        L4a:
            r0.setVisibility(r3)
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r0 = r7.binding
            android.widget.RelativeLayout r0 = r0.pitchSemitoneControl
            if (r8 == 0) goto L54
            r2 = r1
        L54:
            r0.setVisibility(r2)
            if (r8 == 0) goto La8
            double r2 = r7.pitchPercent
            r4 = 4591870180174331904(0x3fb99999a0000000, double:0.10000000149011612)
            int r8 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r8 >= 0) goto L66
        L64:
            r2 = r4
            goto L6d
        L66:
            r4 = 4613937818241073152(0x4008000000000000, double:3.0)
            int r8 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r8 <= 0) goto L6d
            goto L64
        L6d:
            android.content.Context r8 = r7.requireContext()
            android.content.SharedPreferences r8 = androidx.preference.PreferenceManager.getDefaultSharedPreferences(r8)
            r0 = 2131952585(0x7f1303c9, float:1.9541617E38)
            java.lang.String r0 = r7.getString(r0)
            boolean r8 = r8.getBoolean(r0, r1)
            if (r8 != 0) goto L83
            goto L99
        L83:
            int r8 = kotlin.text.UStringsKt.percentToSemitones(r2)
            r0 = -12
            r1 = 12
            int r8 = okhttp3.Cookie.Companion.clamp(r8, r0, r1)
            double r0 = (double) r8
            r2 = 4622945017495814144(0x4028000000000000, double:12.0)
            double r0 = r0 / r2
            r2 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r2 = java.lang.Math.pow(r2, r0)
        L99:
            double r0 = r7.pitchPercent
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 == 0) goto Lc7
            java.lang.String r8 = org.schabi.newpipe.player.Player.TAG
            r7.onPitchPercentSliderUpdated(r2)
            r7.updateCallback()
            return
        La8:
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r8 = r7.binding
            android.widget.CheckBox r8 = r8.unhookCheckbox
            boolean r8 = r8.isChecked()
            if (r8 != 0) goto Lc7
            double r0 = r7.tempo
            double r2 = r7.pitchPercent
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 == 0) goto Lc7
            double r0 = java.lang.Math.min(r0, r2)
            r7.setAndUpdateTempo(r0)
            r7.setAndUpdatePitch(r0)
            r7.updateCallback()
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.helper.PlaybackParameterDialog.changePitchControlMode(boolean):void");
    }

    public final Map getPitchControlModeComponentMappings() {
        Boolean bool = Boolean.FALSE;
        DialogPlaybackParameterBinding dialogPlaybackParameterBinding = this.binding;
        NewPipeTextView newPipeTextView = dialogPlaybackParameterBinding.pitchControlModePercent;
        Boolean bool2 = Boolean.TRUE;
        NewPipeTextView newPipeTextView2 = dialogPlaybackParameterBinding.pitchControlModeSemitone;
        AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(bool, newPipeTextView);
        AbstractMap.SimpleEntry simpleEntry2 = new AbstractMap.SimpleEntry(bool2, newPipeTextView2);
        Map.Entry[] entryArr = {simpleEntry, simpleEntry2};
        HashMap hashMap = new HashMap(2);
        for (int i = 0; i < 2; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return null;
            }
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    public final Map getStepSizeComponentMappings() {
        Map.Entry[] entryArr = {new AbstractMap.SimpleEntry(Double.valueOf(0.009999999776482582d), this.binding.stepSizeOnePercent), new AbstractMap.SimpleEntry(Double.valueOf(0.05000000074505806d), this.binding.stepSizeFivePercent), new AbstractMap.SimpleEntry(Double.valueOf(0.10000000149011612d), this.binding.stepSizeTenPercent), new AbstractMap.SimpleEntry(Double.valueOf(0.25d), this.binding.stepSizeTwentyFivePercent), new AbstractMap.SimpleEntry(Double.valueOf(1.0d), this.binding.stepSizeOneHundredPercent)};
        HashMap hashMap = new HashMap(5);
        for (int i = 0; i < 5; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (hashMap.put(key, value) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                return null;
            }
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof Callback) {
            this.callback = (Callback) context;
        } else if (this.callback == null) {
            dismissInternal(false, false);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Bridge.restoreInstanceState(this, bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.dialog_playback_parameter, (ViewGroup) null, false);
        int i2 = R.id.additionalOptions;
        if (((LinearLayout) Options.Companion.findChildViewById(R.id.additionalOptions, inflate)) != null) {
            i2 = R.id.pitchControlContainer;
            if (((RelativeLayout) Options.Companion.findChildViewById(R.id.pitchControlContainer, inflate)) != null) {
                i2 = R.id.pitchControlModePercent;
                NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchControlModePercent, inflate);
                if (newPipeTextView != null) {
                    i2 = R.id.pitchControlModeSemitone;
                    NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchControlModeSemitone, inflate);
                    if (newPipeTextView2 != null) {
                        i2 = R.id.pitchControlModeTabs;
                        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.pitchControlModeTabs, inflate);
                        if (linearLayout != null) {
                            i2 = R.id.pitchControlText;
                            if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchControlText, inflate)) != null) {
                                i2 = R.id.pitchPercentControl;
                                RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.pitchPercentControl, inflate);
                                if (relativeLayout != null) {
                                    i2 = R.id.pitchPercentCurrentText;
                                    NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchPercentCurrentText, inflate);
                                    if (newPipeTextView3 != null) {
                                        i2 = R.id.pitchPercentDisplay;
                                        if (((RelativeLayout) Options.Companion.findChildViewById(R.id.pitchPercentDisplay, inflate)) != null) {
                                            i2 = R.id.pitchPercentMaximumText;
                                            NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchPercentMaximumText, inflate);
                                            if (newPipeTextView4 != null) {
                                                i2 = R.id.pitchPercentMinimumText;
                                                NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchPercentMinimumText, inflate);
                                                if (newPipeTextView5 != null) {
                                                    i2 = R.id.pitchPercentSeekbar;
                                                    AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) Options.Companion.findChildViewById(R.id.pitchPercentSeekbar, inflate);
                                                    if (appCompatSeekBar != null) {
                                                        i2 = R.id.pitchPercentStepDown;
                                                        NewPipeTextView newPipeTextView6 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchPercentStepDown, inflate);
                                                        if (newPipeTextView6 != null) {
                                                            i2 = R.id.pitchPercentStepUp;
                                                            NewPipeTextView newPipeTextView7 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchPercentStepUp, inflate);
                                                            if (newPipeTextView7 != null) {
                                                                i2 = R.id.pitchSemitoneControl;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) Options.Companion.findChildViewById(R.id.pitchSemitoneControl, inflate);
                                                                if (relativeLayout2 != null) {
                                                                    i2 = R.id.pitchSemitoneCurrentText;
                                                                    NewPipeTextView newPipeTextView8 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchSemitoneCurrentText, inflate);
                                                                    if (newPipeTextView8 != null) {
                                                                        i2 = R.id.pitchSemitoneDisplay;
                                                                        if (((RelativeLayout) Options.Companion.findChildViewById(R.id.pitchSemitoneDisplay, inflate)) != null) {
                                                                            i2 = R.id.pitchSemitoneMaximumText;
                                                                            if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchSemitoneMaximumText, inflate)) != null) {
                                                                                i2 = R.id.pitchSemitoneMinimumText;
                                                                                if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchSemitoneMinimumText, inflate)) != null) {
                                                                                    i2 = R.id.pitchSemitoneSeekbar;
                                                                                    AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) Options.Companion.findChildViewById(R.id.pitchSemitoneSeekbar, inflate);
                                                                                    if (appCompatSeekBar2 != null) {
                                                                                        i2 = R.id.pitchSemitoneStepDown;
                                                                                        NewPipeTextView newPipeTextView9 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchSemitoneStepDown, inflate);
                                                                                        if (newPipeTextView9 != null) {
                                                                                            i2 = R.id.pitchSemitoneStepUp;
                                                                                            NewPipeTextView newPipeTextView10 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.pitchSemitoneStepUp, inflate);
                                                                                            if (newPipeTextView10 != null) {
                                                                                                i2 = R.id.pitchToogleControlModes;
                                                                                                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.pitchToogleControlModes, inflate);
                                                                                                if (imageView != null) {
                                                                                                    i2 = R.id.playback_step_type;
                                                                                                    if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.playback_step_type, inflate)) != null) {
                                                                                                        i2 = R.id.separatorCheckbox;
                                                                                                        View findChildViewById = Options.Companion.findChildViewById(R.id.separatorCheckbox, inflate);
                                                                                                        if (findChildViewById != null) {
                                                                                                            i2 = R.id.separatorPitch;
                                                                                                            View findChildViewById2 = Options.Companion.findChildViewById(R.id.separatorPitch, inflate);
                                                                                                            if (findChildViewById2 != null) {
                                                                                                                i2 = R.id.separatorStepSizeSelector;
                                                                                                                View findChildViewById3 = Options.Companion.findChildViewById(R.id.separatorStepSizeSelector, inflate);
                                                                                                                if (findChildViewById3 != null) {
                                                                                                                    i2 = R.id.skipSilenceCheckbox;
                                                                                                                    CheckBox checkBox = (CheckBox) Options.Companion.findChildViewById(R.id.skipSilenceCheckbox, inflate);
                                                                                                                    if (checkBox != null) {
                                                                                                                        i2 = R.id.stepSizeFivePercent;
                                                                                                                        NewPipeTextView newPipeTextView11 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.stepSizeFivePercent, inflate);
                                                                                                                        if (newPipeTextView11 != null) {
                                                                                                                            i2 = R.id.stepSizeOneHundredPercent;
                                                                                                                            NewPipeTextView newPipeTextView12 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.stepSizeOneHundredPercent, inflate);
                                                                                                                            if (newPipeTextView12 != null) {
                                                                                                                                i2 = R.id.stepSizeOnePercent;
                                                                                                                                NewPipeTextView newPipeTextView13 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.stepSizeOnePercent, inflate);
                                                                                                                                if (newPipeTextView13 != null) {
                                                                                                                                    i2 = R.id.stepSizeSelector;
                                                                                                                                    if (((LinearLayout) Options.Companion.findChildViewById(R.id.stepSizeSelector, inflate)) != null) {
                                                                                                                                        i2 = R.id.stepSizeTenPercent;
                                                                                                                                        NewPipeTextView newPipeTextView14 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.stepSizeTenPercent, inflate);
                                                                                                                                        if (newPipeTextView14 != null) {
                                                                                                                                            i2 = R.id.stepSizeTwentyFivePercent;
                                                                                                                                            NewPipeTextView newPipeTextView15 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.stepSizeTwentyFivePercent, inflate);
                                                                                                                                            if (newPipeTextView15 != null) {
                                                                                                                                                i2 = R.id.tempoControl;
                                                                                                                                                if (((RelativeLayout) Options.Companion.findChildViewById(R.id.tempoControl, inflate)) != null) {
                                                                                                                                                    i2 = R.id.tempoControlText;
                                                                                                                                                    if (((NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoControlText, inflate)) != null) {
                                                                                                                                                        i2 = R.id.tempoCurrentText;
                                                                                                                                                        NewPipeTextView newPipeTextView16 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoCurrentText, inflate);
                                                                                                                                                        if (newPipeTextView16 != null) {
                                                                                                                                                            i2 = R.id.tempoMaximumText;
                                                                                                                                                            NewPipeTextView newPipeTextView17 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoMaximumText, inflate);
                                                                                                                                                            if (newPipeTextView17 != null) {
                                                                                                                                                                i2 = R.id.tempoMinimumText;
                                                                                                                                                                NewPipeTextView newPipeTextView18 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoMinimumText, inflate);
                                                                                                                                                                if (newPipeTextView18 != null) {
                                                                                                                                                                    i2 = R.id.tempoSeekbar;
                                                                                                                                                                    AppCompatSeekBar appCompatSeekBar3 = (AppCompatSeekBar) Options.Companion.findChildViewById(R.id.tempoSeekbar, inflate);
                                                                                                                                                                    if (appCompatSeekBar3 != null) {
                                                                                                                                                                        i2 = R.id.tempoStepDown;
                                                                                                                                                                        NewPipeTextView newPipeTextView19 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoStepDown, inflate);
                                                                                                                                                                        if (newPipeTextView19 != null) {
                                                                                                                                                                            i2 = R.id.tempoStepUp;
                                                                                                                                                                            NewPipeTextView newPipeTextView20 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.tempoStepUp, inflate);
                                                                                                                                                                            if (newPipeTextView20 != null) {
                                                                                                                                                                                i2 = R.id.unhookCheckbox;
                                                                                                                                                                                CheckBox checkBox2 = (CheckBox) Options.Companion.findChildViewById(R.id.unhookCheckbox, inflate);
                                                                                                                                                                                if (checkBox2 != null) {
                                                                                                                                                                                    this.binding = new DialogPlaybackParameterBinding((ScrollView) inflate, newPipeTextView, newPipeTextView2, linearLayout, relativeLayout, newPipeTextView3, newPipeTextView4, newPipeTextView5, appCompatSeekBar, newPipeTextView6, newPipeTextView7, relativeLayout2, newPipeTextView8, appCompatSeekBar2, newPipeTextView9, newPipeTextView10, imageView, findChildViewById, findChildViewById2, findChildViewById3, checkBox, newPipeTextView11, newPipeTextView12, newPipeTextView13, newPipeTextView14, newPipeTextView15, newPipeTextView16, newPipeTextView17, newPipeTextView18, appCompatSeekBar3, newPipeTextView19, newPipeTextView20, checkBox2);
                                                                                                                                                                                    setText(newPipeTextView18, new PlaybackParameterDialog$$ExternalSyntheticLambda3(i), 0.10000000149011612d);
                                                                                                                                                                                    setText(this.binding.tempoMaximumText, new PlaybackParameterDialog$$ExternalSyntheticLambda3(i), 3.0d);
                                                                                                                                                                                    AppCompatSeekBar appCompatSeekBar4 = this.binding.tempoSeekbar;
                                                                                                                                                                                    final SliderStrategy.Quadratic quadratic = QUADRATIC_STRATEGY;
                                                                                                                                                                                    appCompatSeekBar4.setMax(quadratic.progressOf(3.0d));
                                                                                                                                                                                    setAndUpdateTempo(this.tempo);
                                                                                                                                                                                    AppCompatSeekBar appCompatSeekBar5 = this.binding.tempoSeekbar;
                                                                                                                                                                                    final int i3 = 1;
                                                                                                                                                                                    final DoubleConsumer doubleConsumer = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d) {
                                                                                                                                                                                            int i4 = i3;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i4) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer2) {
                                                                                                                                                                                            int i4 = i3;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer2);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    appCompatSeekBar5.setOnSeekBarChangeListener(new SimpleOnSeekBarChangeListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog.2
                                                                                                                                                                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                                                                                                                                                        public final void onProgressChanged(SeekBar seekBar, int i4, boolean z) {
                                                                                                                                                                                            if (z) {
                                                                                                                                                                                                doubleConsumer.accept(quadratic.valueOf(i4));
                                                                                                                                                                                                PlaybackParameterDialog.this.updateCallback();
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView21 = this.binding.tempoStepDown;
                                                                                                                                                                                    final DoubleSupplier doubleSupplier = new DoubleSupplier(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda7
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleSupplier
                                                                                                                                                                                        public final double getAsDouble() {
                                                                                                                                                                                            int i4 = i3;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i4) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                case 2:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final DoubleConsumer doubleConsumer2 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d) {
                                                                                                                                                                                            int i4 = i3;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i4) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i4 = i3;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final double d = -1.0d;
                                                                                                                                                                                    newPipeTextView21.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda20
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            double asDouble = doubleSupplier.getAsDouble();
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer2.accept((PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog.requireContext()).getFloat(playbackParameterDialog.getString(R.string.adjustment_step_key), 0.25f) * 1.0d * d) + asDouble);
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView22 = this.binding.tempoStepUp;
                                                                                                                                                                                    final int i4 = 2;
                                                                                                                                                                                    final DoubleSupplier doubleSupplier2 = new DoubleSupplier(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda7
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleSupplier
                                                                                                                                                                                        public final double getAsDouble() {
                                                                                                                                                                                            int i42 = i4;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                case 2:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final DoubleConsumer doubleConsumer3 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d2) {
                                                                                                                                                                                            int i42 = i3;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d2);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d2);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d2);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d2);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i3;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final double d2 = 1.0d;
                                                                                                                                                                                    newPipeTextView22.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda20
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            double asDouble = doubleSupplier2.getAsDouble();
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer3.accept((PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog.requireContext()).getFloat(playbackParameterDialog.getString(R.string.adjustment_step_key), 0.25f) * 1.0d * d2) + asDouble);
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    this.binding.pitchToogleControlModes.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda15
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            boolean z = playbackParameterDialog.binding.pitchControlModeTabs.getVisibility() == 8;
                                                                                                                                                                                            playbackParameterDialog.binding.pitchControlModeTabs.setVisibility(z ? 0 : 8);
                                                                                                                                                                                            AppKt.animateRotation(z ? 180 : 0, playbackParameterDialog.binding.pitchToogleControlModes);
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    Map.EL.forEach(getPitchControlModeComponentMappings(), new PlaybackParameterDialog$$ExternalSyntheticLambda9(this, i3));
                                                                                                                                                                                    setText(this.binding.pitchPercentMinimumText, new PlaybackParameterDialog$$ExternalSyntheticLambda3(i4), 0.10000000149011612d);
                                                                                                                                                                                    setText(this.binding.pitchPercentMaximumText, new PlaybackParameterDialog$$ExternalSyntheticLambda3(i4), 3.0d);
                                                                                                                                                                                    this.binding.pitchPercentSeekbar.setMax(quadratic.progressOf(3.0d));
                                                                                                                                                                                    setAndUpdatePitch(this.pitchPercent);
                                                                                                                                                                                    AppCompatSeekBar appCompatSeekBar6 = this.binding.pitchPercentSeekbar;
                                                                                                                                                                                    final DoubleConsumer doubleConsumer4 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    appCompatSeekBar6.setOnSeekBarChangeListener(new SimpleOnSeekBarChangeListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog.2
                                                                                                                                                                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                                                                                                                                                        public final void onProgressChanged(SeekBar seekBar, int i42, boolean z) {
                                                                                                                                                                                            if (z) {
                                                                                                                                                                                                doubleConsumer4.accept(quadratic.valueOf(i42));
                                                                                                                                                                                                PlaybackParameterDialog.this.updateCallback();
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView23 = this.binding.pitchPercentStepDown;
                                                                                                                                                                                    final DoubleSupplier doubleSupplier3 = new DoubleSupplier(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda7
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleSupplier
                                                                                                                                                                                        public final double getAsDouble() {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                case 2:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final DoubleConsumer doubleConsumer5 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final double d3 = -1.0d;
                                                                                                                                                                                    newPipeTextView23.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda20
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            double asDouble = doubleSupplier3.getAsDouble();
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer5.accept((PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog.requireContext()).getFloat(playbackParameterDialog.getString(R.string.adjustment_step_key), 0.25f) * 1.0d * d3) + asDouble);
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView24 = this.binding.pitchPercentStepUp;
                                                                                                                                                                                    final int i5 = 3;
                                                                                                                                                                                    final DoubleSupplier doubleSupplier4 = new DoubleSupplier(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda7
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleSupplier
                                                                                                                                                                                        public final double getAsDouble() {
                                                                                                                                                                                            int i42 = i5;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                case 2:
                                                                                                                                                                                                    return playbackParameterDialog.tempo;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    return playbackParameterDialog.pitchPercent;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final DoubleConsumer doubleConsumer6 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final double d4 = 1.0d;
                                                                                                                                                                                    newPipeTextView24.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda20
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            double asDouble = doubleSupplier4.getAsDouble();
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer6.accept((PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog.requireContext()).getFloat(playbackParameterDialog.getString(R.string.adjustment_step_key), 0.25f) * 1.0d * d4) + asDouble);
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    AppCompatSeekBar appCompatSeekBar7 = this.binding.pitchSemitoneSeekbar;
                                                                                                                                                                                    final DoubleConsumer doubleConsumer7 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final Path.Companion companion = SEMITONE_STRATEGY;
                                                                                                                                                                                    appCompatSeekBar7.setOnSeekBarChangeListener(new SimpleOnSeekBarChangeListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog.2
                                                                                                                                                                                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                                                                                                                                                                                        public final void onProgressChanged(SeekBar seekBar, int i42, boolean z) {
                                                                                                                                                                                            if (z) {
                                                                                                                                                                                                doubleConsumer7.accept(companion.valueOf(i42));
                                                                                                                                                                                                PlaybackParameterDialog.this.updateCallback();
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView25 = this.binding.pitchSemitoneStepDown;
                                                                                                                                                                                    final DoubleConsumer doubleConsumer8 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    final int i6 = -1;
                                                                                                                                                                                    newPipeTextView25.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda21
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer8.accept(Math.pow(2.0d, Cookie.Companion.clamp(UStringsKt.percentToSemitones(playbackParameterDialog.pitchPercent) + i6, -12, 12) / 12.0d));
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    NewPipeTextView newPipeTextView26 = this.binding.pitchSemitoneStepUp;
                                                                                                                                                                                    final DoubleConsumer doubleConsumer9 = new DoubleConsumer(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda6
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // java.util.function.DoubleConsumer
                                                                                                                                                                                        public final void accept(double d22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i42) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.onPitchPercentSliderUpdated(d22);
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    if (!playbackParameterDialog.binding.unhookCheckbox.isChecked()) {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdatePitch(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    } else {
                                                                                                                                                                                                        playbackParameterDialog.setAndUpdateTempo(d22);
                                                                                                                                                                                                        break;
                                                                                                                                                                                                    }
                                                                                                                                                                                            }
                                                                                                                                                                                        }

                                                                                                                                                                                        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer22) {
                                                                                                                                                                                            int i42 = i;
                                                                                                                                                                                            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer22);
                                                                                                                                                                                        }
                                                                                                                                                                                    };
                                                                                                                                                                                    newPipeTextView26.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda21
                                                                                                                                                                                        @Override // android.view.View.OnClickListener
                                                                                                                                                                                        public final void onClick(View view) {
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            doubleConsumer9.accept(Math.pow(2.0d, Cookie.Companion.clamp(UStringsKt.percentToSemitones(playbackParameterDialog.pitchPercent) + i3, -12, 12) / 12.0d));
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    Map.EL.forEach(getStepSizeComponentMappings(), new PlaybackParameterDialog$$ExternalSyntheticLambda9(this, i));
                                                                                                                                                                                    setStepSizeToUI(PreferenceManager.getDefaultSharedPreferences(requireContext()).getFloat(getString(R.string.adjustment_step_key), 0.25f));
                                                                                                                                                                                    CheckBox checkBox3 = this.binding.unhookCheckbox;
                                                                                                                                                                                    PlayerHolder$$ExternalSyntheticLambda0 playerHolder$$ExternalSyntheticLambda0 = new PlayerHolder$$ExternalSyntheticLambda0(this, i5);
                                                                                                                                                                                    boolean z = PreferenceManager.getDefaultSharedPreferences(requireContext()).getBoolean(getString(R.string.playback_unhook_key), true);
                                                                                                                                                                                    checkBox3.setChecked(z);
                                                                                                                                                                                    playerHolder$$ExternalSyntheticLambda0.s(Boolean.valueOf(z));
                                                                                                                                                                                    checkBox3.setOnCheckedChangeListener(new PlaybackParameterDialog$$ExternalSyntheticLambda18(this, playerHolder$$ExternalSyntheticLambda0, i));
                                                                                                                                                                                    boolean z2 = this.skipSilence;
                                                                                                                                                                                    this.skipSilence = z2;
                                                                                                                                                                                    this.binding.skipSilenceCheckbox.setChecked(z2);
                                                                                                                                                                                    this.binding.skipSilenceCheckbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda11
                                                                                                                                                                                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                                                                                                                                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = PlaybackParameterDialog.this;
                                                                                                                                                                                            playbackParameterDialog.skipSilence = z3;
                                                                                                                                                                                            playbackParameterDialog.updateCallback();
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    changePitchControlMode(PreferenceManager.getDefaultSharedPreferences(requireContext()).getBoolean(getString(R.string.playback_adjust_by_semitones_key), false));
                                                                                                                                                                                    AlertDialog.Builder view = new AlertDialog.Builder(requireActivity()).setView(this.binding.rootView);
                                                                                                                                                                                    view.P.mCancelable = true;
                                                                                                                                                                                    AlertDialog.Builder negativeButton = view.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda0
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // android.content.DialogInterface.OnClickListener
                                                                                                                                                                                        public final void onClick(DialogInterface dialogInterface, int i7) {
                                                                                                                                                                                            int i8 = i;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i8) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(playbackParameterDialog.initialTempo);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(playbackParameterDialog.initialPitchPercent);
                                                                                                                                                                                                    boolean z3 = playbackParameterDialog.initialSkipSilence;
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = z3;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(z3);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = false;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(false);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    negativeButton.setNeutralButton(R.string.playback_reset, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda0
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // android.content.DialogInterface.OnClickListener
                                                                                                                                                                                        public final void onClick(DialogInterface dialogInterface, int i7) {
                                                                                                                                                                                            int i8 = i3;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i8) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(playbackParameterDialog.initialTempo);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(playbackParameterDialog.initialPitchPercent);
                                                                                                                                                                                                    boolean z3 = playbackParameterDialog.initialSkipSilence;
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = z3;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(z3);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = false;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(false);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    });
                                                                                                                                                                                    return negativeButton.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener(this) { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda0
                                                                                                                                                                                        public final /* synthetic */ PlaybackParameterDialog f$0;

                                                                                                                                                                                        {
                                                                                                                                                                                            this.f$0 = this;
                                                                                                                                                                                        }

                                                                                                                                                                                        @Override // android.content.DialogInterface.OnClickListener
                                                                                                                                                                                        public final void onClick(DialogInterface dialogInterface, int i7) {
                                                                                                                                                                                            int i8 = i4;
                                                                                                                                                                                            PlaybackParameterDialog playbackParameterDialog = this.f$0;
                                                                                                                                                                                            switch (i8) {
                                                                                                                                                                                                case 0:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(playbackParameterDialog.initialTempo);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(playbackParameterDialog.initialPitchPercent);
                                                                                                                                                                                                    boolean z3 = playbackParameterDialog.initialSkipSilence;
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = z3;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(z3);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                case 1:
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdateTempo(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.setAndUpdatePitch(1.0d);
                                                                                                                                                                                                    playbackParameterDialog.skipSilence = false;
                                                                                                                                                                                                    playbackParameterDialog.binding.skipSilenceCheckbox.setChecked(false);
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                                default:
                                                                                                                                                                                                    playbackParameterDialog.updateCallback();
                                                                                                                                                                                                    break;
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }).create();
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
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    public final void onPitchPercentSliderUpdated(double d) {
        if (this.binding.unhookCheckbox.isChecked()) {
            setAndUpdatePitch(d);
        } else {
            setAndUpdateTempo(d);
            setAndUpdatePitch(d);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Bridge.saveInstanceState(this, bundle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        if (r5 > 3.0d) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAndUpdatePitch(double r5) {
        /*
            r4 = this;
            r0 = 4591870180174331904(0x3fb99999a0000000, double:0.10000000149011612)
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 >= 0) goto Lb
        L9:
            r5 = r0
            goto L12
        Lb:
            r0 = 4613937818241073152(0x4008000000000000, double:3.0)
            int r2 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r2 <= 0) goto L12
            goto L9
        L12:
            android.content.Context r0 = r4.requireContext()
            android.content.SharedPreferences r0 = androidx.preference.PreferenceManager.getDefaultSharedPreferences(r0)
            r1 = 2131952585(0x7f1303c9, float:1.9541617E38)
            java.lang.String r1 = r4.getString(r1)
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            r1 = 12
            if (r0 != 0) goto L2b
            goto L3f
        L2b:
            int r5 = kotlin.text.UStringsKt.percentToSemitones(r5)
            r6 = -12
            int r5 = okhttp3.Cookie.Companion.clamp(r5, r6, r1)
            double r5 = (double) r5
            r2 = 4622945017495814144(0x4028000000000000, double:12.0)
            double r5 = r5 / r2
            r2 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r5 = java.lang.Math.pow(r2, r5)
        L3f:
            r4.pitchPercent = r5
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r0 = r4.binding
            androidx.appcompat.widget.AppCompatSeekBar r0 = r0.pitchPercentSeekbar
            org.schabi.newpipe.util.SliderStrategy$Quadratic r2 = org.schabi.newpipe.player.helper.PlaybackParameterDialog.QUADRATIC_STRATEGY
            int r5 = r2.progressOf(r5)
            r0.setProgress(r5)
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r5 = r4.binding
            androidx.appcompat.widget.AppCompatSeekBar r5 = r5.pitchSemitoneSeekbar
            double r2 = r4.pitchPercent
            okio.Path$Companion r6 = org.schabi.newpipe.player.helper.PlaybackParameterDialog.SEMITONE_STRATEGY
            r6.getClass()
            int r6 = kotlin.text.UStringsKt.percentToSemitones(r2)
            int r6 = r6 + r1
            r5.setProgress(r6)
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r5 = r4.binding
            org.schabi.newpipe.views.NewPipeTextView r5 = r5.pitchPercentCurrentText
            org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3 r6 = new org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3
            r0 = 2
            r6.<init>(r0)
            double r0 = r4.pitchPercent
            setText(r5, r6, r0)
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r5 = r4.binding
            org.schabi.newpipe.views.NewPipeTextView r5 = r5.pitchSemitoneCurrentText
            org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3 r6 = new org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3
            r0 = 3
            r6.<init>(r0)
            double r0 = r4.pitchPercent
            setText(r5, r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.helper.PlaybackParameterDialog.setAndUpdatePitch(double):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        if (r4 > 3.0d) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAndUpdateTempo(double r4) {
        /*
            r3 = this;
            r0 = 4591870180174331904(0x3fb99999a0000000, double:0.10000000149011612)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 >= 0) goto Lb
        L9:
            r4 = r0
            goto L12
        Lb:
            r0 = 4613937818241073152(0x4008000000000000, double:3.0)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L12
            goto L9
        L12:
            r3.tempo = r4
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r0 = r3.binding
            androidx.appcompat.widget.AppCompatSeekBar r0 = r0.tempoSeekbar
            org.schabi.newpipe.util.SliderStrategy$Quadratic r1 = org.schabi.newpipe.player.helper.PlaybackParameterDialog.QUADRATIC_STRATEGY
            int r4 = r1.progressOf(r4)
            r0.setProgress(r4)
            org.schabi.newpipe.databinding.DialogPlaybackParameterBinding r4 = r3.binding
            org.schabi.newpipe.views.NewPipeTextView r4 = r4.tempoCurrentText
            org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3 r5 = new org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda3
            r0 = 0
            r5.<init>(r0)
            double r0 = r3.tempo
            setText(r4, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.helper.PlaybackParameterDialog.setAndUpdateTempo(double):void");
    }

    public final void setStepSizeToUI(double d) {
        java.util.Map stepSizeComponentMappings = getStepSizeComponentMappings();
        Map.EL.forEach(stepSizeComponentMappings, new PlaybackParameterDialog$$ExternalSyntheticLambda9(this, 3));
        TextView textView = (TextView) stepSizeComponentMappings.get(Double.valueOf(d));
        if (textView != null) {
            textView.setBackground(new LayerDrawable(new Drawable[]{Options.Companion.resolveDrawable(requireContext(), R.attr.dashed_border), Options.Companion.resolveDrawable(requireContext(), android.R.attr.selectableItemBackground)}));
        }
        this.binding.tempoStepUp.setText("+" + PlayerHelper.formatPitch(d));
        this.binding.tempoStepDown.setText("-" + PlayerHelper.formatPitch(d));
        this.binding.pitchPercentStepUp.setText("+" + PlayerHelper.formatPitch(d));
        this.binding.pitchPercentStepDown.setText("-" + PlayerHelper.formatPitch(d));
    }

    public final void updateCallback() {
        Callback callback = this.callback;
        if (callback == null) {
            return;
        }
        String str = Player.TAG;
        callback.onPlaybackParameterChanged((float) this.tempo, (float) this.pitchPercent, this.skipSilence);
    }
}
