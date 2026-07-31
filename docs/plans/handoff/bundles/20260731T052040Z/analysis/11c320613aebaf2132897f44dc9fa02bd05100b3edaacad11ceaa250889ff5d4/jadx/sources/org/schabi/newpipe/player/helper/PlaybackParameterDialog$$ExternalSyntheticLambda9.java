package org.schabi.newpipe.player.helper;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.TextView;
import androidx.preference.PreferenceManager;
import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import okio.Options;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlaybackParameterDialog$$ExternalSyntheticLambda9 implements BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlaybackParameterDialog f$0;

    public /* synthetic */ PlaybackParameterDialog$$ExternalSyntheticLambda9(PlaybackParameterDialog playbackParameterDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = playbackParameterDialog;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        int i = this.$r8$classId;
        final PlaybackParameterDialog playbackParameterDialog = this.f$0;
        switch (i) {
            case 0:
                final double doubleValue = ((Double) obj).doubleValue();
                TextView textView = (TextView) obj2;
                PlaybackParameterDialog.setText(textView, new PlaybackParameterDialog$$ExternalSyntheticLambda3(1), doubleValue);
                textView.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda23
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PlaybackParameterDialog playbackParameterDialog2 = PlaybackParameterDialog.this;
                        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog2.requireContext()).edit();
                        String string = playbackParameterDialog2.getString(R.string.adjustment_step_key);
                        double d = doubleValue;
                        edit.putFloat(string, (float) d).apply();
                        playbackParameterDialog2.setStepSizeToUI(d);
                    }
                });
                break;
            case 1:
                final boolean booleanValue = ((Boolean) obj).booleanValue();
                ((TextView) obj2).setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.player.helper.PlaybackParameterDialog$$ExternalSyntheticLambda17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PlaybackParameterDialog playbackParameterDialog2 = PlaybackParameterDialog.this;
                        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(playbackParameterDialog2.requireContext()).edit();
                        String string = playbackParameterDialog2.getString(R.string.playback_adjust_by_semitones_key);
                        boolean z = booleanValue;
                        edit.putBoolean(string, z).apply();
                        playbackParameterDialog2.changePitchControlMode(z);
                    }
                });
                break;
            case 2:
                ((TextView) obj2).setBackground(Options.Companion.resolveDrawable(playbackParameterDialog.requireContext(), android.R.attr.selectableItemBackground));
                break;
            default:
                ((TextView) obj2).setBackground(Options.Companion.resolveDrawable(playbackParameterDialog.requireContext(), android.R.attr.selectableItemBackground));
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.$r8$classId;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
