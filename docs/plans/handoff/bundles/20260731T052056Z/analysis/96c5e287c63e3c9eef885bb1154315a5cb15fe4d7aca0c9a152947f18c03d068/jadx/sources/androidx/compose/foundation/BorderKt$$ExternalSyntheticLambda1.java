package androidx.compose.foundation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.preference.PreferenceManager;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BorderKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BorderKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Context context = null;
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
                Context context2 = (Context) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal);
                while (true) {
                    if (context2 instanceof ContextWrapper) {
                        if (context2 instanceof Activity) {
                            context = context2;
                        } else {
                            context2 = ((ContextWrapper) context2).getBaseContext();
                        }
                    }
                }
                return (Activity) context;
            case 3:
                return unit;
            case 4:
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
                                seekingAnimationState.animationSpecDuration = UnsignedKt.roundToLong((1.0d - seekingAnimationState.start.get$animation_core(0)) * seekableTransitionState.totalDurationNanos);
                            }
                        }
                    } else if (j2 != 0) {
                        seekableTransitionState.seekToFraction();
                    }
                }
                return unit;
            case 5:
                return new AnimationVector1D(((Float) obj).floatValue());
            case 6:
                return new AnimationVector1D(((Integer) obj).intValue());
            case 7:
                return Integer.valueOf((int) ((AnimationVector1D) obj).value);
            case 8:
                return new AnimationVector1D(((Dp) obj).value);
            case 9:
                return new Dp(((AnimationVector1D) obj).value);
            case 10:
                DpOffset dpOffset = (DpOffset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (dpOffset.packedValue >> 32)), Float.intBitsToFloat((int) (dpOffset.packedValue & 4294967295L)));
            case 11:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                return new DpOffset((Float.floatToRawIntBits(animationVector2D.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D.v1) << 32));
            case 12:
                Size size = (Size) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (size.packedValue >> 32)), Float.intBitsToFloat((int) (size.packedValue & 4294967295L)));
            case IMAGE_VALUE:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                return new Size((Float.floatToRawIntBits(animationVector2D2.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D2.v1) << 32));
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                Offset offset = (Offset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (offset.packedValue >> 32)), Float.intBitsToFloat((int) (offset.packedValue & 4294967295L)));
            case 15:
                AnimationVector2D animationVector2D3 = (AnimationVector2D) obj;
                return new Offset((Float.floatToRawIntBits(animationVector2D3.v2) & 4294967295L) | (Float.floatToRawIntBits(animationVector2D3.v1) << 32));
            case LAZY_VERTICAL_GRID_VALUE:
                long j3 = ((IntOffset) obj).packedValue;
                return new AnimationVector2D((int) (j3 >> 32), (int) (j3 & 4294967295L));
            case VERTICAL_GRID_ITEM_VALUE:
                AnimationVector2D animationVector2D4 = (AnimationVector2D) obj;
                return new IntOffset((Math.round(animationVector2D4.v2) & 4294967295L) | (Math.round(animationVector2D4.v1) << 32));
            case RADIO_GROUP_VALUE:
                long j4 = ((IntSize) obj).packedValue;
                return new AnimationVector2D((int) (j4 >> 32), (int) (j4 & 4294967295L));
            case RADIO_BUTTON_VALUE:
                AnimationVector2D animationVector2D5 = (AnimationVector2D) obj;
                int round = Math.round(animationVector2D5.v1);
                if (round < 0) {
                    round = 0;
                }
                return new IntSize((round << 32) | ((Math.round(animationVector2D5.v2) >= 0 ? r8 : 0) & 4294967295L));
            case RADIO_ROW_VALUE:
                Rect rect = (Rect) obj;
                return new AnimationVector4D(rect.left, rect.top, rect.right, rect.bottom);
            case RADIO_COLUMN_VALUE:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                return new Rect(animationVector4D.v1, animationVector4D.v2, animationVector4D.v3, animationVector4D.v4);
            case SIZE_BOX_VALUE:
                return Float.valueOf(((AnimationVector1D) obj).value);
            case 23:
                return unit;
            case 24:
                ((Long) obj).getClass();
                return unit;
            case 25:
                CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
                int i2 = AndroidOverscroll_androidKt.$r8$clinit;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AndroidCompositionLocals_androidKt.LocalContext;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                persistentCompositionLocalHashMap2.getClass();
                Context context3 = (Context) Updater.read(persistentCompositionLocalHashMap2, staticProvidableCompositionLocal2);
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap3 = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                Density density = (Density) Updater.read(persistentCompositionLocalHashMap3, CompositionLocalsKt.LocalDensity);
                OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) Updater.read(persistentCompositionLocalHashMap3, OverscrollConfiguration_androidKt.LocalOverscrollConfiguration);
                if (overscrollConfiguration == null) {
                    return null;
                }
                return new AndroidEdgeEffectOverscrollFactory(context3, density, overscrollConfiguration.glowColor, overscrollConfiguration.drawPadding);
            case 26:
                ProgressBarRangeInfo progressBarRangeInfo = ProgressBarRangeInfo.Indeterminate;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ProgressBarRangeInfo;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[1];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, progressBarRangeInfo);
                return unit;
            case 27:
                return new ScrollState(((Integer) obj).intValue());
            case 28:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = AndroidCompositionLocals_androidKt.LocalContext;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap4 = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap4.getClass();
                if (((Context) Updater.read(persistentCompositionLocalHashMap4, staticProvidableCompositionLocal3)).getPackageManager().hasSystemFeature("android.software.leanback")) {
                    return BringIntoViewSpec_androidKt.PivotBringIntoViewSpec;
                }
                BringIntoViewSpec.Companion.getClass();
                return BringIntoViewSpec.Companion.DefaultBringIntoViewSpec;
            default:
                ((Long) obj).getClass();
                return unit;
        }
    }
}
