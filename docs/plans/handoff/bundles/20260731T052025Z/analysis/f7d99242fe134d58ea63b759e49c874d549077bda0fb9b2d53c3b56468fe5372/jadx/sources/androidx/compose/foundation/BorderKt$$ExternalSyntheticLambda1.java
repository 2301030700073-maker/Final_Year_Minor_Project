package androidx.compose.foundation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.UseCase;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BorderKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BorderKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((LayoutNodeDrawScope) obj).drawContent();
                return unit;
            case 1:
                Resources resources = (Resources) obj;
                resources.getClass();
                return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.LocalContext;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap.getClass();
                Context context = (Context) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal);
                while (true) {
                    if (!(context instanceof ContextWrapper)) {
                        context = null;
                    } else if (!(context instanceof Activity)) {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                }
                return (Activity) context;
            case 3:
                ((Result3A) obj).getClass();
                return unit;
            case 4:
                ((Unit) obj).getClass();
                return Boolean.TRUE;
            case 5:
                return obj instanceof Object[] ? ArraysKt___ArraysKt.joinToString$default((Object[]) obj, null, "[", "]", new BorderKt$$ExternalSyntheticLambda1(5), 25) : String.valueOf(obj);
            case 6:
                ((List) obj).getClass();
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                UseCase useCase = (UseCase) obj;
                useCase.getClass();
                return useCase.mCurrentConfig;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ProcessCameraProvider.sAppInstance;
            case 9:
                return unit;
            case 10:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                long j = seekableTransitionState.totalDurationNanos;
                SnapshotStateObserver snapshotStateObserver = seekableTransitionState.snapshotStateObserver;
                if (snapshotStateObserver != null) {
                    snapshotStateObserver.observeReads(seekableTransitionState, ArcSplineKt.SeekableTransitionStateTotalDurationChanged, seekableTransitionState.recalculateTotalDurationNanos);
                }
                long j2 = seekableTransitionState.totalDurationNanos;
                if (j != j2) {
                    SeekableTransitionState.SeekingAnimationState seekingAnimationState = seekableTransitionState.currentAnimation;
                    if (seekingAnimationState != null) {
                        if (seekingAnimationState.progressNanos > j2) {
                            seekableTransitionState.endAllAnimations();
                        } else {
                            seekingAnimationState.durationNanos = j2;
                            if (seekingAnimationState.animationSpec == null) {
                                seekingAnimationState.animationSpecDuration = MathKt.roundToLong((1.0d - seekingAnimationState.start.get$animation_core(0)) * seekableTransitionState.totalDurationNanos);
                            }
                        }
                    } else if (j2 != 0) {
                        seekableTransitionState.seekToFraction();
                    }
                }
                return unit;
            case 11:
                return new AnimationVector1D(((Float) obj).floatValue());
            case BasicTextKt.ShiftMeta /* 12 */:
                return new AnimationVector1D(((Integer) obj).intValue());
            case 13:
                return Integer.valueOf((int) ((AnimationVector1D) obj).value);
            case 14:
                return new AnimationVector1D(((Dp) obj).value);
            case OffsetKt.Horizontal /* 15 */:
                return new Dp(((AnimationVector1D) obj).value);
            case 16:
                DpOffset dpOffset = (DpOffset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (dpOffset.packedValue >> 32)), Float.intBitsToFloat((int) (4294967295L & dpOffset.packedValue)));
            case 17:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new DpOffset((Float.floatToRawIntBits(animationVector2D.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D.v1) << 32));
            case 18:
                Size size = (Size) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (size.packedValue >> 32)), Float.intBitsToFloat((int) (4294967295L & size.packedValue)));
            case 19:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                return new Size((Float.floatToRawIntBits(animationVector2D2.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D2.v1) << 32));
            case 20:
                Offset offset = (Offset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (offset.packedValue >> 32)), Float.intBitsToFloat((int) (4294967295L & offset.packedValue)));
            case 21:
                AnimationVector2D animationVector2D3 = (AnimationVector2D) obj;
                return new Offset((Float.floatToRawIntBits(animationVector2D3.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D3.v1) << 32));
            case 22:
                long j3 = ((IntOffset) obj).packedValue;
                return new AnimationVector2D((int) (j3 >> 32), (int) (j3 & 4294967295L));
            case 23:
                AnimationVector2D animationVector2D4 = (AnimationVector2D) obj;
                return new IntOffset((Math.round(animationVector2D4.v2) & 4294967295L) | (Math.round(animationVector2D4.v1) << 32));
            case 24:
                long j4 = ((IntSize) obj).packedValue;
                return new AnimationVector2D((int) (j4 >> 32), (int) (j4 & 4294967295L));
            case 25:
                AnimationVector2D animationVector2D5 = (AnimationVector2D) obj;
                int round = Math.round(animationVector2D5.v1);
                if (round < 0) {
                    round = 0;
                }
                return new IntSize((round << 32) | ((Math.round(animationVector2D5.v2) >= 0 ? r7 : 0) & 4294967295L));
            case 26:
                Rect rect = (Rect) obj;
                return new AnimationVector4D(rect.left, rect.top, rect.right, rect.bottom);
            case 27:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                return new Rect(animationVector4D.v1, animationVector4D.v2, animationVector4D.v3, animationVector4D.v4);
            case 28:
                return Float.valueOf(((AnimationVector1D) obj).value);
            default:
                return unit;
        }
    }
}
