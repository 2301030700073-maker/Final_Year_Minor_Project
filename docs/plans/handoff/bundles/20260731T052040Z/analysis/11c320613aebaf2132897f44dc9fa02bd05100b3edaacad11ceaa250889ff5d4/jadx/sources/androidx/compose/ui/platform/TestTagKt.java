package androidx.compose.ui.platform;

import android.R;
import android.content.res.Resources;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Binder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.util.Log;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TestTagKt implements ViewCompositionStrategy {
    public static final Class[] AcceptableClasses = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};

    public static final boolean access$enabled(SemanticsNode semanticsNode) {
        SemanticsConfiguration config = semanticsNode.getConfig();
        return !config.props.containsKey(SemanticsProperties.Disabled);
    }

    public static final boolean access$isScreenReaderFocusable(SemanticsNode semanticsNode, Resources resources) {
        Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.ContentDescription);
        if (obj == null) {
            obj = null;
        }
        List list = (List) obj;
        return !SemanticsNodeKt.isHidden(semanticsNode) && (semanticsNode.unmergedConfig.isMergingSemanticsOfDescendants || (semanticsNode.isUnmergedLeafNode$ui() && ((list != null ? (String) CollectionsKt.firstOrNull(list) : null) != null || getInfoText(semanticsNode) != null || getInfoStateDescriptionOrNull(semanticsNode, resources) != null || getInfoIsCheckable(semanticsNode))));
    }

    public static final void addPageActions(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
        Object obj = semanticsConfiguration.props.get(SemanticsProperties.Role);
        if (obj == null) {
            obj = null;
        }
        Role role = (Role) obj;
        if (access$enabled(semanticsNode)) {
            if (role != null && role.value == 8) {
                return;
            }
            Object obj2 = mutableScatterMap.get(SemanticsActions.PageUp);
            if (obj2 == null) {
                obj2 = null;
            }
            AccessibilityAction accessibilityAction = (AccessibilityAction) obj2;
            if (accessibilityAction != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, accessibilityAction.label));
            }
            Object obj3 = mutableScatterMap.get(SemanticsActions.PageDown);
            if (obj3 == null) {
                obj3 = null;
            }
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj3;
            if (accessibilityAction2 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, accessibilityAction2.label));
            }
            Object obj4 = mutableScatterMap.get(SemanticsActions.PageLeft);
            if (obj4 == null) {
                obj4 = null;
            }
            AccessibilityAction accessibilityAction3 = (AccessibilityAction) obj4;
            if (accessibilityAction3 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageLeft, accessibilityAction3.label));
            }
            Object obj5 = mutableScatterMap.get(SemanticsActions.PageRight);
            AccessibilityAction accessibilityAction4 = (AccessibilityAction) (obj5 != null ? obj5 : null);
            if (accessibilityAction4 != null) {
                accessibilityNodeInfoCompat.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageRight, accessibilityAction4.label));
            }
        }
    }

    public static final boolean canBeSavedToBundle(Object obj) {
        if (obj instanceof SnapshotMutableState) {
            SnapshotMutableState snapshotMutableState = (SnapshotMutableState) obj;
            if (snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE || snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE$3 || snapshotMutableState.getPolicy() == NeverEqualPolicy.INSTANCE$1) {
                Object value = snapshotMutableState.getValue();
                if (value == null) {
                    return true;
                }
                return canBeSavedToBundle(value);
            }
        } else if (!(obj instanceof Function) || !(obj instanceof Serializable)) {
            for (int i = 0; i < 7; i++) {
                if (AcceptableClasses[i].isInstance(obj)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: dot-p89u6pk, reason: not valid java name */
    public static final float m393dotp89u6pk(int i, float[] fArr, float[] fArr2, int i2) {
        int i3 = i * 4;
        return (fArr[i3 + 3] * fArr2[12 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3] * fArr2[i2]);
    }

    public static final int findDepthToTag(int i, View view) {
        int i2 = 0;
        int i3 = Log.LOG_LEVEL_OFF;
        Object obj = null;
        while (view != null) {
            Object tag = view.getTag(i);
            if (tag != null) {
                if (obj != null) {
                    if (!tag.equals(obj)) {
                        break;
                    }
                } else {
                    obj = tag;
                }
                i3 = i2;
            }
            i2++;
            Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return i3;
    }

    public static final View findViewTreeComposeViewRoot(View view) {
        if (!view.isAttachedToWindow()) {
            return view;
        }
        int min = Math.min(findDepthToTag(org.schabi.newpipe.R.id.view_tree_lifecycle_owner, view), findDepthToTag(org.schabi.newpipe.R.id.view_tree_saved_state_registry_owner, view));
        View view2 = view;
        int i = 0;
        View view3 = view2;
        while (view != null) {
            if (i == min) {
                if (!(view.getParent() instanceof ViewGroup)) {
                    return view2;
                }
            } else if (getComposeViewContext(view) == null) {
                i++;
                Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
                View view4 = view2;
                view2 = view;
                view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                view3 = view4;
            }
            return view;
        }
        return view3;
    }

    public static final ComposeViewContext getComposeViewContext(View view) {
        Object tag = view.getTag(org.schabi.newpipe.R.id.androidx_compose_ui_view_compose_view_context);
        WeakReference weakReference = tag instanceof WeakReference ? (WeakReference) tag : null;
        if (weakReference != null) {
            return (ComposeViewContext) weakReference.get();
        }
        return null;
    }

    public static final boolean getInfoIsCheckable(SemanticsNode semanticsNode) {
        Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.ToggleableState);
        if (obj == null) {
            obj = null;
        }
        ToggleableState toggleableState = (ToggleableState) obj;
        MutableScatterMap mutableScatterMap = semanticsNode.unmergedConfig.props;
        Object obj2 = mutableScatterMap.get(SemanticsProperties.Role);
        if (obj2 == null) {
            obj2 = null;
        }
        Role role = (Role) obj2;
        boolean z = toggleableState != null;
        Object obj3 = mutableScatterMap.get(SemanticsProperties.Selected);
        if (((Boolean) (obj3 != null ? obj3 : null)) == null || (role != null && role.value == 4)) {
            return z;
        }
        return true;
    }

    public static final String getInfoStateDescriptionOrNull(SemanticsNode semanticsNode, Resources resources) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        SemanticsConfiguration semanticsConfiguration2 = semanticsNode.unmergedConfig;
        Object obj = semanticsConfiguration.props.get(SemanticsProperties.StateDescription);
        String str = null;
        if (obj == null) {
            obj = null;
        }
        MutableScatterMap mutableScatterMap = semanticsConfiguration2.props;
        Object obj2 = mutableScatterMap.get(SemanticsProperties.ToggleableState);
        if (obj2 == null) {
            obj2 = null;
        }
        ToggleableState toggleableState = (ToggleableState) obj2;
        Object obj3 = mutableScatterMap.get(SemanticsProperties.Role);
        if (obj3 == null) {
            obj3 = null;
        }
        Role role = (Role) obj3;
        if (toggleableState != null) {
            int ordinal = toggleableState.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    if (obj == null) {
                        obj = resources.getString(org.schabi.newpipe.R.string.indeterminate);
                    }
                } else if (role != null && role.value == 2 && obj == null) {
                    obj = resources.getString(org.schabi.newpipe.R.string.state_off);
                }
            } else if (role != null && role.value == 2 && obj == null) {
                obj = resources.getString(org.schabi.newpipe.R.string.state_on);
            }
        }
        Object obj4 = mutableScatterMap.get(SemanticsProperties.Selected);
        if (obj4 == null) {
            obj4 = null;
        }
        Boolean bool = (Boolean) obj4;
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            if ((role == null || role.value != 4) && obj == null) {
                obj = booleanValue ? resources.getString(org.schabi.newpipe.R.string.selected) : resources.getString(org.schabi.newpipe.R.string.not_selected);
            }
        }
        Object obj5 = mutableScatterMap.get(SemanticsProperties.ProgressBarRangeInfo);
        if (obj5 == null) {
            obj5 = null;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj5;
        if (progressBarRangeInfo != null) {
            if (progressBarRangeInfo != ProgressBarRangeInfo.Indeterminate) {
                if (obj == null) {
                    float f = progressBarRangeInfo.range._endInclusive;
                    float f2 = f - 0.0f == 0.0f ? 0.0f : 0.0f / (f - 0.0f);
                    if (f2 < 0.0f) {
                        f2 = 0.0f;
                    }
                    if (f2 > 1.0f) {
                        f2 = 1.0f;
                    }
                    obj = resources.getString(org.schabi.newpipe.R.string.template_percent, Integer.valueOf(f2 == 0.0f ? 0 : f2 == 1.0f ? 100 : RangesKt.coerceIn(Math.round(f2 * 100.0f), 1, 99)));
                }
            } else if (obj == null) {
                obj = resources.getString(org.schabi.newpipe.R.string.in_progress);
            }
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.EditableText;
        if (mutableScatterMap.containsKey(semanticsPropertyKey)) {
            MutableScatterMap mutableScatterMap2 = new SemanticsNode(semanticsNode.outerSemanticsNode, true, semanticsNode.layoutNode, semanticsConfiguration2).getConfig().props;
            Object obj6 = mutableScatterMap2.get(SemanticsProperties.ContentDescription);
            if (obj6 == null) {
                obj6 = null;
            }
            Collection collection = (Collection) obj6;
            if (collection == null || collection.isEmpty()) {
                Object obj7 = mutableScatterMap2.get(SemanticsProperties.Text);
                if (obj7 == null) {
                    obj7 = null;
                }
                Collection collection2 = (Collection) obj7;
                if (collection2 == null || collection2.isEmpty()) {
                    Object obj8 = mutableScatterMap2.get(semanticsPropertyKey);
                    if (obj8 == null) {
                        obj8 = null;
                    }
                    CharSequence charSequence = (CharSequence) obj8;
                    if (charSequence == null || charSequence.length() == 0) {
                        str = resources.getString(org.schabi.newpipe.R.string.state_empty);
                    }
                }
            }
            obj = str;
        }
        return (String) obj;
    }

    public static final AnnotatedString getInfoText(SemanticsNode semanticsNode) {
        Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.EditableText);
        if (obj == null) {
            obj = null;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        Object obj2 = semanticsNode.unmergedConfig.props.get(SemanticsProperties.Text);
        if (obj2 == null) {
            obj2 = null;
        }
        List list = (List) obj2;
        return annotatedString == null ? list != null ? (AnnotatedString) CollectionsKt.firstOrNull(list) : null : annotatedString;
    }

    public static boolean getIsShowingLayoutBounds() {
        try {
            if (AndroidComposeView.systemPropertiesClass == null) {
                AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
            }
            if (AndroidComposeView.getBooleanMethod == null) {
                Class cls = AndroidComposeView.systemPropertiesClass;
                AndroidComposeView.getBooleanMethod = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
            }
            Method method = AndroidComposeView.getBooleanMethod;
            Object invoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
            return Intrinsics.areEqual(invoke instanceof Boolean ? (Boolean) invoke : null, Boolean.TRUE);
        } catch (Exception unused) {
            return false;
        }
    }

    public static final TextLayoutResult getTextLayoutResult(SemanticsConfiguration semanticsConfiguration) {
        Function1 function1;
        ArrayList arrayList = new ArrayList();
        Object obj = semanticsConfiguration.props.get(SemanticsActions.GetTextLayoutResult);
        if (obj == null) {
            obj = null;
        }
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        if (accessibilityAction == null || (function1 = (Function1) accessibilityAction.action) == null || !((Boolean) function1.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (TextLayoutResult) arrayList.get(0);
    }

    /* renamed from: invertTo-JiSxe2E, reason: not valid java name */
    public static final boolean m394invertToJiSxe2E(float[] fArr, float[] fArr2) {
        if (fArr.length < 16 || fArr2.length < 16) {
            return false;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[9];
        float f11 = fArr[10];
        float f12 = fArr[11];
        float f13 = fArr[12];
        float f14 = fArr[13];
        float f15 = fArr[14];
        float f16 = fArr[15];
        float f17 = (f * f6) - (f2 * f5);
        float f18 = (f * f7) - (f3 * f5);
        float f19 = (f * f8) - (f4 * f5);
        float f20 = (f2 * f7) - (f3 * f6);
        float f21 = (f2 * f8) - (f4 * f6);
        float f22 = (f3 * f8) - (f4 * f7);
        float f23 = (f9 * f14) - (f10 * f13);
        float f24 = (f9 * f15) - (f11 * f13);
        float f25 = (f9 * f16) - (f12 * f13);
        float f26 = (f10 * f15) - (f11 * f14);
        float f27 = (f10 * f16) - (f12 * f14);
        float f28 = (f11 * f16) - (f12 * f15);
        float f29 = (f22 * f23) + (((f20 * f25) + ((f19 * f26) + ((f17 * f28) - (f18 * f27)))) - (f21 * f24));
        if (f29 != 0.0f) {
            float f30 = 1.0f / f29;
            fArr2[0] = ((f8 * f26) + ((f6 * f28) - (f7 * f27))) * f30;
            fArr2[1] = (((f3 * f27) + ((-f2) * f28)) - (f4 * f26)) * f30;
            fArr2[2] = ((f16 * f20) + ((f14 * f22) - (f15 * f21))) * f30;
            fArr2[3] = (((f11 * f21) + ((-f10) * f22)) - (f12 * f20)) * f30;
            float f31 = -f5;
            fArr2[4] = (((f7 * f25) + (f31 * f28)) - (f8 * f24)) * f30;
            fArr2[5] = ((f4 * f24) + ((f28 * f) - (f3 * f25))) * f30;
            float f32 = -f13;
            fArr2[6] = (((f15 * f19) + (f32 * f22)) - (f16 * f18)) * f30;
            fArr2[7] = ((f12 * f18) + ((f22 * f9) - (f11 * f19))) * f30;
            fArr2[8] = ((f8 * f23) + ((f5 * f27) - (f6 * f25))) * f30;
            fArr2[9] = (((f25 * f2) + ((-f) * f27)) - (f4 * f23)) * f30;
            fArr2[10] = ((f16 * f17) + ((f13 * f21) - (f14 * f19))) * f30;
            fArr2[11] = (((f19 * f10) + ((-f9) * f21)) - (f12 * f17)) * f30;
            fArr2[12] = (((f6 * f24) + (f31 * f26)) - (f7 * f23)) * f30;
            fArr2[13] = ((f3 * f23) + ((f * f26) - (f2 * f24))) * f30;
            fArr2[14] = (((f14 * f18) + (f32 * f20)) - (f15 * f17)) * f30;
            fArr2[15] = ((f11 * f17) + ((f9 * f20) - (f10 * f18))) * f30;
        }
        return !(f29 == 0.0f);
    }

    public static final boolean isInPath(float f, float f2, AndroidPath androidPath) {
        float f3 = f - 0.005f;
        float f4 = f2 - 0.005f;
        float f5 = f + 0.005f;
        float f6 = f2 + 0.005f;
        AndroidPath Path = AndroidPath_androidKt.Path();
        if (Float.isNaN(f3) || Float.isNaN(f4) || Float.isNaN(f5) || Float.isNaN(f6)) {
            AndroidPath_androidKt.throwIllegalStateException("Invalid rectangle, make sure no value is NaN");
        }
        if (Path.rectF == null) {
            Path.rectF = new RectF();
        }
        RectF rectF = Path.rectF;
        rectF.getClass();
        rectF.set(f3, f4, f5, f6);
        Path path = Path.internalPath;
        RectF rectF2 = Path.rectF;
        rectF2.getClass();
        path.addRect(rectF2, Path.Direction.CCW);
        AndroidPath Path2 = AndroidPath_androidKt.Path();
        Path.Op op = Path.Op.INTERSECT;
        Path path2 = Path2.internalPath;
        if (androidPath instanceof AndroidPath) {
            Path path3 = androidPath.internalPath;
            if (Path instanceof AndroidPath) {
                path2.op(path3, Path.internalPath, op);
                boolean isEmpty = Path2.internalPath.isEmpty();
                Path2.reset();
                Path.reset();
                return !isEmpty;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
        boolean isEmpty2 = Path2.internalPath.isEmpty();
        Path2.reset();
        Path.reset();
        return !isEmpty2;
    }

    /* renamed from: isWithinEllipse-VE1yxkc, reason: not valid java name */
    public static final boolean m395isWithinEllipseVE1yxkc(float f, float f2, float f3, float f4, long j) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return ((f6 * f6) / (intBitsToFloat2 * intBitsToFloat2)) + ((f5 * f5) / (intBitsToFloat * intBitsToFloat)) <= 1.0f;
    }

    /* renamed from: preTransform-JiSxe2E, reason: not valid java name */
    public static final void m396preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float m393dotp89u6pk = m393dotp89u6pk(0, fArr2, fArr, 0);
        float m393dotp89u6pk2 = m393dotp89u6pk(0, fArr2, fArr, 1);
        float m393dotp89u6pk3 = m393dotp89u6pk(0, fArr2, fArr, 2);
        float m393dotp89u6pk4 = m393dotp89u6pk(0, fArr2, fArr, 3);
        float m393dotp89u6pk5 = m393dotp89u6pk(1, fArr2, fArr, 0);
        float m393dotp89u6pk6 = m393dotp89u6pk(1, fArr2, fArr, 1);
        float m393dotp89u6pk7 = m393dotp89u6pk(1, fArr2, fArr, 2);
        float m393dotp89u6pk8 = m393dotp89u6pk(1, fArr2, fArr, 3);
        float m393dotp89u6pk9 = m393dotp89u6pk(2, fArr2, fArr, 0);
        float m393dotp89u6pk10 = m393dotp89u6pk(2, fArr2, fArr, 1);
        float m393dotp89u6pk11 = m393dotp89u6pk(2, fArr2, fArr, 2);
        float m393dotp89u6pk12 = m393dotp89u6pk(2, fArr2, fArr, 3);
        float m393dotp89u6pk13 = m393dotp89u6pk(3, fArr2, fArr, 0);
        float m393dotp89u6pk14 = m393dotp89u6pk(3, fArr2, fArr, 1);
        float m393dotp89u6pk15 = m393dotp89u6pk(3, fArr2, fArr, 2);
        float m393dotp89u6pk16 = m393dotp89u6pk(3, fArr2, fArr, 3);
        fArr[0] = m393dotp89u6pk;
        fArr[1] = m393dotp89u6pk2;
        fArr[2] = m393dotp89u6pk3;
        fArr[3] = m393dotp89u6pk4;
        fArr[4] = m393dotp89u6pk5;
        fArr[5] = m393dotp89u6pk6;
        fArr[6] = m393dotp89u6pk7;
        fArr[7] = m393dotp89u6pk8;
        fArr[8] = m393dotp89u6pk9;
        fArr[9] = m393dotp89u6pk10;
        fArr[10] = m393dotp89u6pk11;
        fArr[11] = m393dotp89u6pk12;
        fArr[12] = m393dotp89u6pk13;
        fArr[13] = m393dotp89u6pk14;
        fArr[14] = m393dotp89u6pk15;
        fArr[15] = m393dotp89u6pk16;
    }

    public static final void semanticsIdToView(AndroidViewsHandler androidViewsHandler, int i) {
        Object obj;
        Iterator<T> it = androidViewsHandler.getLayoutNodeToHolder().entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it.next();
                if (((LayoutNode) ((Map.Entry) obj).getKey()).semanticsId == i) {
                    break;
                }
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry == null || entry.getValue() == null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
    }

    public static final String simpleIdentityToString(Object obj) {
        return (obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName()) + '@' + String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
    }

    public static final Modifier testTag(Modifier modifier) {
        return modifier.then(new TestTagElement());
    }

    /* renamed from: toLegacyClassName-V4PA4sw, reason: not valid java name */
    public static final String m397toLegacyClassNameV4PA4sw(int i) {
        if (i == 0) {
            return "android.widget.Button";
        }
        if (i == 1) {
            return "android.widget.CheckBox";
        }
        if (i == 3) {
            return "android.widget.RadioButton";
        }
        if (i == 5) {
            return "android.widget.ImageView";
        }
        if (i == 6) {
            return "android.widget.Spinner";
        }
        if (i == 7) {
            return "android.widget.NumberPicker";
        }
        return null;
    }
}
