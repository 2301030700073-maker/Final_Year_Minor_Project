package androidx.compose.material3;

import android.view.View;
import android.view.ViewParent;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.internal.ParentSemanticsNode;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.NextFrameEndCallbackQueue$NextFrameEndAwaiter;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.ViewTreeHostDefaultProvider;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.OperationKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TextKt$$ExternalSyntheticLambda1(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl) {
        this.$r8$classId = 14;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = null;
        r6 = null;
        SpanStyle spanStyle = null;
        switch (this.$r8$classId) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = TextKt.LocalTextStyle;
                return Unit.INSTANCE;
            case 1:
                return Unit.INSTANCE;
            case 2:
                return Boolean.TRUE;
            case 3:
                Offset offset = (Offset) obj;
                long j = offset.packedValue;
                return (9223372034707292159L & j) != 9205357640488583168L ? new AnimationVector2D(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (4294967295L & offset.packedValue))) : SelectionMagnifierKt.UnspecifiedAnimationVector2D;
            case 4:
                float f = ((AnimationVector2D) obj).v1;
                return new Offset((Float.floatToRawIntBits(r10.v2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
            case 5:
                SemanticsPropertiesKt.m674setRolekuIjeqM((SemanticsPropertyReceiver) obj, 0);
                return Unit.INSTANCE;
            case 6:
                SemanticsPropertiesKt.setTraversalGroup((SemanticsPropertyReceiver) obj);
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = ModalBottomSheetKt.$r8$clinit;
                return Boolean.TRUE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SemanticsPropertiesKt.setTraversalGroup((SemanticsPropertyReceiver) obj);
                return Unit.INSTANCE;
            case 9:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.IsDialog;
                Unit unit = Unit.INSTANCE;
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, unit);
                return unit;
            case 10:
                SemanticsPropertiesKt.m674setRolekuIjeqM((SemanticsPropertyReceiver) obj, 4);
                return Unit.INSTANCE;
            case 11:
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpec.KeyframesSpecConfig) obj;
                keyframesSpecConfig.durationMillis = 6000;
                Float valueOf = Float.valueOf(90.0f);
                keyframesSpecConfig.at(300, valueOf).easing = MotionTokens.EasingEmphasizedDecelerateCubicBezier;
                keyframesSpecConfig.at(1500, valueOf);
                Float valueOf2 = Float.valueOf(180.0f);
                keyframesSpecConfig.at(1800, valueOf2);
                keyframesSpecConfig.at(3000, valueOf2);
                Float valueOf3 = Float.valueOf(270.0f);
                keyframesSpecConfig.at(3300, valueOf3);
                keyframesSpecConfig.at(4500, valueOf3);
                Float valueOf4 = Float.valueOf(360.0f);
                keyframesSpecConfig.at(4800, valueOf4);
                keyframesSpecConfig.at(6000, valueOf4);
                return Unit.INSTANCE;
            case 13:
                SemanticsPropertiesKt.m674setRolekuIjeqM((SemanticsPropertyReceiver) obj, 3);
                return Unit.INSTANCE;
            case 14:
                return Boolean.valueOf(Intrinsics.areEqual(((FadeInFadeOutAnimationItem) obj).key, null));
            case OffsetKt.Horizontal /* 15 */:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.IsContainer;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[5];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey2, Boolean.TRUE);
                return Unit.INSTANCE;
            case 16:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) traversableNode;
                parentSemanticsNode.semanticsConsumed = false;
                HitTestResultKt.invalidateSemantics(parentSemanticsNode);
                return Boolean.FALSE;
            case 17:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                MenuHostHelper menuHostHelper = layoutNodeDrawScope.canvasDrawScope.drawContext;
                long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
                menuHostHelper.getCanvas().save();
                try {
                    ((MenuHostHelper) ((PreviewView.AnonymousClass1) menuHostHelper.mOnInvalidateMenuCallback).this$0).getCanvas().mo454clipRectN_I0leg(-3.4028235E38f, 0.0f, Float.MAX_VALUE, Float.MAX_VALUE, 1);
                    layoutNodeDrawScope.drawContent();
                    Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                    throw th;
                }
            case 18:
                Float f2 = (Float) obj;
                f2.getClass();
                return new PullToRefreshStateImpl(new Animatable(f2, ArcSplineKt.FloatToVector, obj2, 12));
            case 19:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = HostDefaultProviderKt.LocalHostDefaultProvider;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap.getClass();
                View view = ((ViewTreeHostDefaultProvider) Updater.read(persistentCompositionLocalHashMap, dynamicProvidableCompositionLocal2)).view;
                while (view != null) {
                    Object tag = view.getTag(R.id.view_tree_navigation_event_dispatcher_owner);
                    if (tag != null) {
                        return tag;
                    }
                    ViewParent parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(view);
                    view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                }
                return null;
            case 20:
                LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1 = ((NextFrameEndCallbackQueue$NextFrameEndAwaiter) obj).onNextFrameEnd;
                if (layoutNode$_foldedChildren$1 != null) {
                    layoutNode$_foldedChildren$1.invoke();
                }
                return Unit.INSTANCE;
            case 21:
                WeakCache weakCache = TextFieldValue.Saver;
                MutableState mutableState = (MutableState) obj;
                if (!(mutableState instanceof SnapshotMutableState)) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
                    return null;
                }
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
                if (snapshotMutableState.getValue() != null) {
                    Object value = snapshotMutableState.getValue();
                    value.getClass();
                    obj2 = ((Function1) weakCache.referenceQueue).invoke(value);
                }
                NeverEqualPolicy policy = snapshotMutableState.getPolicy();
                policy.getClass();
                return new ParcelableSnapshotMutableState(obj2, policy);
            case 22:
                return new SaveableStateHolderImpl((Map) obj);
            case 23:
                return obj;
            case 24:
                synchronized (SnapshotKt.lock) {
                    List list = SnapshotKt.globalWriteObservers;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Function1) list.get(i2)).invoke(obj);
                    }
                }
                return Unit.INSTANCE;
            case 25:
                TextKt$$ExternalSyntheticLambda1 textKt$$ExternalSyntheticLambda1 = SnapshotKt.emptyLambda;
                return Unit.INSTANCE;
            case 26:
                return Boolean.valueOf(!(((AnnotatedString.Annotation) obj) instanceof ParagraphStyle));
            case 27:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                StringBuilder sb = new StringBuilder("[");
                sb.append(paragraphInfo.startIndex);
                sb.append(", ");
                return CameraDevices$CC.m(sb, paragraphInfo.endIndex, ')');
            case 28:
                obj.getClass();
                List list2 = (List) obj;
                Object obj3 = list2.get(0);
                Function1 function1 = (Function1) SaversKt.SpanStyleSaver.referenceQueue;
                Boolean bool = Boolean.FALSE;
                SpanStyle spanStyle2 = (Intrinsics.areEqual(obj3, bool) || obj3 == null) ? null : (SpanStyle) function1.invoke(obj3);
                Object obj4 = list2.get(1);
                SpanStyle spanStyle3 = (Intrinsics.areEqual(obj4, bool) || obj4 == null) ? null : (SpanStyle) function1.invoke(obj4);
                Object obj5 = list2.get(2);
                SpanStyle spanStyle4 = (Intrinsics.areEqual(obj5, bool) || obj5 == null) ? null : (SpanStyle) function1.invoke(obj5);
                Object obj6 = list2.get(3);
                if (!Intrinsics.areEqual(obj6, bool) && obj6 != null) {
                    spanStyle = (SpanStyle) function1.invoke(obj6);
                }
                return new TextLinkStyles(spanStyle2, spanStyle3, spanStyle4, spanStyle);
            default:
                obj.getClass();
                List list3 = (List) obj;
                Object obj7 = list3.get(1);
                List list4 = (Intrinsics.areEqual(obj7, Boolean.FALSE) || obj7 == null) ? null : (List) ((Function1) SaversKt.AnnotationRangeListSaver.referenceQueue).invoke(obj7);
                Object obj8 = list3.get(0);
                String str = obj8 != null ? (String) obj8 : null;
                str.getClass();
                return new AnnotatedString(list4, str);
        }
    }

    public /* synthetic */ TextKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }
}
