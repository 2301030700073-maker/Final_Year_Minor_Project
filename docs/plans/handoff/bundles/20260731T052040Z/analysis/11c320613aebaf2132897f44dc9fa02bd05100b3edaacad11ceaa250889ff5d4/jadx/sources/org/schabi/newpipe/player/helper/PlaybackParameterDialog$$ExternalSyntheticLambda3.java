package org.schabi.newpipe.player.helper;

import androidx.compose.ui.Modifier;
import java.util.function.DoubleFunction;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlaybackParameterDialog$$ExternalSyntheticLambda3 implements DoubleFunction {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ PlaybackParameterDialog$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.DoubleFunction
    public final Object apply(double d) {
        switch (this.$r8$classId) {
            case 0:
                return PlayerHelper.formatSpeed(d);
            case 1:
                return PlayerHelper.formatPitch(d);
            case 2:
                return PlayerHelper.formatPitch(d);
            default:
                int percentToSemitones = UStringsKt.percentToSemitones(d);
                return Modifier.CC.m(percentToSemitones, percentToSemitones > 0 ? "+" : "");
        }
    }
}
