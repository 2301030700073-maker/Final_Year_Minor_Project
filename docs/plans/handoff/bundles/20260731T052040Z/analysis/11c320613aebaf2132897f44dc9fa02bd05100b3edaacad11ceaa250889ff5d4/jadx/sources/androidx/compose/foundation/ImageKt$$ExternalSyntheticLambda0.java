package androidx.compose.foundation;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.preference.PreferenceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ImageKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver.set(SemanticsProperties.ContentDescription, Jsoup.listOf("NewPipe"));
                SemanticsPropertiesKt.m399setRolekuIjeqM(semanticsPropertyReceiver, 5);
                return unit;
            case 1:
                Resources resources = (Resources) obj;
                resources.getClass();
                return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
            case 2:
                return unit;
            case 3:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                long j = seekableTransitionState.totalDurationNanos;
                PreferenceManager preferenceManager = seekableTransitionState.snapshotStateObserver;
                if (preferenceManager != null) {
                    preferenceManager.observeReads(seekableTransitionState, ArcSplineKt.SeekableTransitionStateTotalDurationChanged, seekableTransitionState.recalculateTotalDurationNanos);
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
            case 4:
                return new AnimationVector1D(((Float) obj).floatValue());
            case 5:
                return new AnimationVector1D(((Integer) obj).intValue());
            case 6:
                return Integer.valueOf((int) ((AnimationVector1D) obj).value);
            case 7:
                return new AnimationVector1D(((Dp) obj).value);
            case 8:
                return new Dp(((AnimationVector1D) obj).value);
            case 9:
                DpOffset dpOffset = (DpOffset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (dpOffset.packedValue >> 32)), Float.intBitsToFloat((int) (dpOffset.packedValue & 4294967295L)));
            case 10:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new DpOffset((Float.floatToRawIntBits(animationVector2D.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D.v1) << 32));
            case 11:
                Size size = (Size) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (size.packedValue >> 32)), Float.intBitsToFloat((int) (size.packedValue & 4294967295L)));
            case 12:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                return new Size((Float.floatToRawIntBits(animationVector2D2.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D2.v1) << 32));
            case 13:
                Offset offset = (Offset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (offset.packedValue >> 32)), Float.intBitsToFloat((int) (offset.packedValue & 4294967295L)));
            case 14:
                AnimationVector2D animationVector2D3 = (AnimationVector2D) obj;
                return new Offset((Float.floatToRawIntBits(animationVector2D3.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D3.v1) << 32));
            case 15:
                long j3 = ((IntOffset) obj).packedValue;
                return new AnimationVector2D((int) (j3 >> 32), (int) (j3 & 4294967295L));
            case 16:
                AnimationVector2D animationVector2D4 = (AnimationVector2D) obj;
                return new IntOffset((Math.round(animationVector2D4.v2) & 4294967295L) | (Math.round(animationVector2D4.v1) << 32));
            case 17:
                long j4 = ((IntSize) obj).packedValue;
                return new AnimationVector2D((int) (j4 >> 32), (int) (j4 & 4294967295L));
            case 18:
                AnimationVector2D animationVector2D5 = (AnimationVector2D) obj;
                int round = Math.round(animationVector2D5.v1);
                if (round < 0) {
                    round = 0;
                }
                return new IntSize((round << 32) | ((Math.round(animationVector2D5.v2) >= 0 ? r8 : 0) & 4294967295L));
            case 19:
                Rect rect = (Rect) obj;
                return new AnimationVector4D(rect.left, rect.top, rect.right, rect.bottom);
            case 20:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                return new Rect(animationVector4D.v1, animationVector4D.v2, animationVector4D.v3, animationVector4D.v4);
            case 21:
                return Float.valueOf(((AnimationVector1D) obj).value);
            case 22:
                return unit;
            case 23:
                CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
                int i2 = AndroidOverscroll_androidKt.$r8$clinit;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.LocalContext;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                persistentCompositionLocalHashMap.getClass();
                Context context = (Context) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal);
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                Density density = (Density) Updater.read(persistentCompositionLocalHashMap2, CompositionLocalsKt.LocalDensity);
                OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) Updater.read(persistentCompositionLocalHashMap2, OverscrollConfiguration_androidKt.LocalOverscrollConfiguration);
                if (overscrollConfiguration == null) {
                    return null;
                }
                return new AndroidEdgeEffectOverscrollFactory(context, density, overscrollConfiguration.glowColor, overscrollConfiguration.drawPadding);
            case 24:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AndroidCompositionLocals_androidKt.LocalContext;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap3 = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap3.getClass();
                if (((Context) Updater.read(persistentCompositionLocalHashMap3, staticProvidableCompositionLocal2)).getPackageManager().hasSystemFeature("android.software.leanback")) {
                    return BringIntoViewSpec_androidKt.PivotBringIntoViewSpec;
                }
                BringIntoViewSpec.Companion.getClass();
                return BringIntoViewSpec.Companion.DefaultBringIntoViewSpec;
            case 25:
                ((Long) obj).getClass();
                return unit;
            case 26:
                PointerType pointerType = (PointerType) obj;
                if (pointerType != null && pointerType.value == 2) {
                    r2 = 1;
                }
                return Boolean.valueOf(r2 ^ 1);
            case 27:
                ((Float) obj).getClass();
                return unit;
            case 28:
                ((Integer) obj).getClass();
                return null;
            default:
                List list = (List) obj;
                return new LazyListState(((Number) list.get(0)).intValue(), ((Number) list.get(1)).intValue());
        }
    }
}
