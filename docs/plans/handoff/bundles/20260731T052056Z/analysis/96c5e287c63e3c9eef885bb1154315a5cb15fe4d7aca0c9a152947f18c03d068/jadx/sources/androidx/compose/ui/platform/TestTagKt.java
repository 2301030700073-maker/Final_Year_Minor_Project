package androidx.compose.ui.platform;

import android.R;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
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
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
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
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TestTagKt implements ViewCompositionStrategy {
    public static final Class[] AcceptableClasses = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};

    public static final void addPageActions(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.unmergedConfig;
        MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
        Object obj = semanticsConfiguration.props.get(SemanticsProperties.Role);
        if (obj == null) {
            obj = null;
        }
        Role role = (Role) obj;
        if (enabled(semanticsNode)) {
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

    public static final int composeToViewOffset(float f) {
        return UnsignedKt.roundToInt(f) * (-1);
    }

    public static final boolean containsDescendant(View view, View view2) {
        if (view2.equals(view)) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: dot-p89u6pk, reason: not valid java name */
    public static final float m608dotp89u6pk(float[] fArr, int i, float[] fArr2, int i2) {
        int i3 = i * 4;
        return (fArr[i3 + 3] * fArr2[12 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3] * fArr2[i2]);
    }

    public static final boolean enabled(SemanticsNode semanticsNode) {
        SemanticsConfiguration config = semanticsNode.getConfig();
        return !config.props.containsKey(SemanticsProperties.Disabled);
    }

    public static final int findDepthToTag(View view, int i) {
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
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
            Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return i3;
    }

    public static final View findViewTreeComposeViewRoot(View view) {
        if (!view.isAttachedToWindow()) {
            return view;
        }
        int min = Math.min(findDepthToTag(view, org.wikipedia.R.id.view_tree_lifecycle_owner), findDepthToTag(view, org.wikipedia.R.id.view_tree_saved_state_registry_owner));
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
                Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
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
        Object tag = view.getTag(org.wikipedia.R.id.androidx_compose_ui_view_compose_view_context);
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
            int i = AndroidComposeViewAccessibilityDelegateCompat_androidKt$WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    if (obj == null) {
                        obj = resources.getString(org.wikipedia.R.string.indeterminate);
                    }
                } else if (role != null && role.value == 2 && obj == null) {
                    obj = resources.getString(org.wikipedia.R.string.state_off);
                }
            } else if (role != null && role.value == 2 && obj == null) {
                obj = resources.getString(org.wikipedia.R.string.state_on);
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
                obj = booleanValue ? resources.getString(org.wikipedia.R.string.selected) : resources.getString(org.wikipedia.R.string.not_selected);
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
                    float f2 = f - RecyclerView.DECELERATION_RATE == RecyclerView.DECELERATION_RATE ? 0.0f : (progressBarRangeInfo.current - RecyclerView.DECELERATION_RATE) / (f - RecyclerView.DECELERATION_RATE);
                    if (f2 < RecyclerView.DECELERATION_RATE) {
                        f2 = 0.0f;
                    }
                    if (f2 > 1.0f) {
                        f2 = 1.0f;
                    }
                    obj = resources.getString(org.wikipedia.R.string.template_percent, Integer.valueOf(f2 == RecyclerView.DECELERATION_RATE ? 0 : f2 == 1.0f ? 100 : RegexKt.coerceIn(Math.round(f2 * 100.0f), 1, 99)));
                }
            } else if (obj == null) {
                obj = resources.getString(org.wikipedia.R.string.in_progress);
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
                        str = resources.getString(org.wikipedia.R.string.state_empty);
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
            Method method = AndroidComposeView.getBooleanMethod;
            if (method == null) {
                Class cls = AndroidComposeView.systemPropertiesClass;
                method = cls != null ? cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE) : null;
                AndroidComposeView.getBooleanMethod = method;
            }
            Object invoke = method != null ? method.invoke(null, "debug.layout", Boolean.FALSE) : null;
            return Intrinsics.areEqual(invoke instanceof Boolean ? (Boolean) invoke : null, Boolean.TRUE);
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: getScrollAxes-k-4lQ0M, reason: not valid java name */
    public static final int m609getScrollAxesk4lQ0M(long j) {
        int i = Math.abs(Float.intBitsToFloat((int) (j >> 32))) >= 0.5f ? 1 : 0;
        return Math.abs(Float.intBitsToFloat((int) (j & 4294967295L))) >= 0.5f ? i | 2 : i;
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
    public static final boolean m610invertToJiSxe2E(float[] fArr, float[] fArr2) {
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
        if (f29 != RecyclerView.DECELERATION_RATE) {
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
        return !(f29 == RecyclerView.DECELERATION_RATE);
    }

    public static final boolean isInPath(float f, float f2, AndroidPath androidPath) {
        Rect rect = new Rect(f - 0.005f, f2 - 0.005f, f + 0.005f, f2 + 0.005f);
        AndroidPath Path = AndroidPath_androidKt.Path();
        Modifier.CC.addRect$default(Path, rect);
        AndroidPath Path2 = AndroidPath_androidKt.Path();
        Path2.m416opN5in7k0(androidPath, Path, 1);
        boolean isEmpty = Path2.internalPath.isEmpty();
        Path2.reset();
        Path.reset();
        return !isEmpty;
    }

    public static final boolean isScreenReaderFocusable(SemanticsNode semanticsNode, Resources resources) {
        Object obj = semanticsNode.unmergedConfig.props.get(SemanticsProperties.ContentDescription);
        if (obj == null) {
            obj = null;
        }
        List list = (List) obj;
        return !SemanticsNodeKt.isHidden(semanticsNode) && (semanticsNode.unmergedConfig.isMergingSemanticsOfDescendants || (semanticsNode.isUnmergedLeafNode$ui() && ((list != null ? (String) CollectionsKt.firstOrNull(list) : null) != null || getInfoText(semanticsNode) != null || getInfoStateDescriptionOrNull(semanticsNode, resources) != null || getInfoIsCheckable(semanticsNode))));
    }

    /* renamed from: isWithinEllipse-VE1yxkc, reason: not valid java name */
    public static final boolean m611isWithinEllipseVE1yxkc(float f, float f2, float f3, float f4, long j) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return ((f6 * f6) / (intBitsToFloat2 * intBitsToFloat2)) + ((f5 * f5) / (intBitsToFloat * intBitsToFloat)) <= 1.0f;
    }

    /* renamed from: preTransform-JiSxe2E, reason: not valid java name */
    public static final void m612preTransformJiSxe2E(float[] fArr, float[] fArr2) {
        float m608dotp89u6pk = m608dotp89u6pk(fArr2, 0, fArr, 0);
        float m608dotp89u6pk2 = m608dotp89u6pk(fArr2, 0, fArr, 1);
        float m608dotp89u6pk3 = m608dotp89u6pk(fArr2, 0, fArr, 2);
        float m608dotp89u6pk4 = m608dotp89u6pk(fArr2, 0, fArr, 3);
        float m608dotp89u6pk5 = m608dotp89u6pk(fArr2, 1, fArr, 0);
        float m608dotp89u6pk6 = m608dotp89u6pk(fArr2, 1, fArr, 1);
        float m608dotp89u6pk7 = m608dotp89u6pk(fArr2, 1, fArr, 2);
        float m608dotp89u6pk8 = m608dotp89u6pk(fArr2, 1, fArr, 3);
        float m608dotp89u6pk9 = m608dotp89u6pk(fArr2, 2, fArr, 0);
        float m608dotp89u6pk10 = m608dotp89u6pk(fArr2, 2, fArr, 1);
        float m608dotp89u6pk11 = m608dotp89u6pk(fArr2, 2, fArr, 2);
        float m608dotp89u6pk12 = m608dotp89u6pk(fArr2, 2, fArr, 3);
        float m608dotp89u6pk13 = m608dotp89u6pk(fArr2, 3, fArr, 0);
        float m608dotp89u6pk14 = m608dotp89u6pk(fArr2, 3, fArr, 1);
        float m608dotp89u6pk15 = m608dotp89u6pk(fArr2, 3, fArr, 2);
        float m608dotp89u6pk16 = m608dotp89u6pk(fArr2, 3, fArr, 3);
        fArr[0] = m608dotp89u6pk;
        fArr[1] = m608dotp89u6pk2;
        fArr[2] = m608dotp89u6pk3;
        fArr[3] = m608dotp89u6pk4;
        fArr[4] = m608dotp89u6pk5;
        fArr[5] = m608dotp89u6pk6;
        fArr[6] = m608dotp89u6pk7;
        fArr[7] = m608dotp89u6pk8;
        fArr[8] = m608dotp89u6pk9;
        fArr[9] = m608dotp89u6pk10;
        fArr[10] = m608dotp89u6pk11;
        fArr[11] = m608dotp89u6pk12;
        fArr[12] = m608dotp89u6pk13;
        fArr[13] = m608dotp89u6pk14;
        fArr[14] = m608dotp89u6pk15;
        fArr[15] = m608dotp89u6pk16;
    }

    public static final AndroidViewHolder semanticsIdToView(AndroidViewsHandler androidViewsHandler, int i) {
        Object obj;
        Iterator<T> it = androidViewsHandler.getLayoutNodeToHolder().entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((LayoutNode) ((Map.Entry) obj).getKey()).semanticsId == i) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry != null) {
            return (AndroidViewHolder) entry.getValue();
        }
        return null;
    }

    public static final String simpleIdentityToString(Object obj) {
        return (obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName()) + '@' + String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
    }

    public static final Modifier testTag(Modifier modifier, String str) {
        return modifier.then(new TestTagElement(str));
    }

    /* renamed from: toLegacyClassName-V4PA4sw, reason: not valid java name */
    public static final String m613toLegacyClassNameV4PA4sw(int i) {
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

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if (r0 > r11) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0071, code lost:
    
        if (r10 > r11) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
    
        r10 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
    
        if (r10 < r11) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
    
        if (r0 < r11) goto L14;
     */
    /* renamed from: toOffset-moWRBKg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long m614toOffsetmoWRBKg(int r10, int r11, int[] r12, long r13) {
        /*
            r0 = 0
            r1 = r12[r0]
            int r1 = java.lang.Math.abs(r1)
            r2 = 32
            r3 = 0
            r4 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L10
            r1 = r3
            goto L1a
        L10:
            long r5 = r13 >> r2
            int r1 = (int) r5
            float r1 = java.lang.Float.intBitsToFloat(r1)
            float r10 = (float) r10
            float r10 = r10 * r4
            float r1 = r1 - r10
        L1a:
            r10 = 1
            r5 = r12[r10]
            int r5 = java.lang.Math.abs(r5)
            r6 = 4294967295(0xffffffff, double:2.1219957905E-314)
            if (r5 != 0) goto L2a
            r5 = r3
            goto L34
        L2a:
            long r8 = r13 & r6
            int r5 = (int) r8
            float r5 = java.lang.Float.intBitsToFloat(r5)
            float r11 = (float) r11
            float r11 = r11 * r4
            float r5 = r5 - r11
        L34:
            long r8 = r13 >> r2
            int r11 = (int) r8
            float r8 = java.lang.Float.intBitsToFloat(r11)
            int r8 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r8 < 0) goto L4e
            r0 = r12[r0]
            float r0 = (float) r0
            float r0 = r0 * r4
            float r0 = r0 + r1
            float r11 = java.lang.Float.intBitsToFloat(r11)
            int r1 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r1 <= 0) goto L5c
        L4c:
            r0 = r11
            goto L5c
        L4e:
            r0 = r12[r0]
            float r0 = (float) r0
            float r0 = r0 * r4
            float r0 = r0 + r1
            float r11 = java.lang.Float.intBitsToFloat(r11)
            int r1 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r1 >= 0) goto L5c
            goto L4c
        L5c:
            long r13 = r13 & r6
            int r11 = (int) r13
            float r13 = java.lang.Float.intBitsToFloat(r11)
            int r13 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r13 < 0) goto L75
            r10 = r12[r10]
            float r10 = (float) r10
            float r10 = r10 * r4
            float r10 = r10 + r5
            float r11 = java.lang.Float.intBitsToFloat(r11)
            int r12 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r12 <= 0) goto L83
        L73:
            r10 = r11
            goto L83
        L75:
            r10 = r12[r10]
            float r10 = (float) r10
            float r10 = r10 * r4
            float r10 = r10 + r5
            float r11 = java.lang.Float.intBitsToFloat(r11)
            int r12 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r12 >= 0) goto L83
            goto L73
        L83:
            int r11 = java.lang.Float.floatToRawIntBits(r0)
            long r11 = (long) r11
            int r10 = java.lang.Float.floatToRawIntBits(r10)
            long r13 = (long) r10
            long r10 = r11 << r2
            long r13 = r13 & r6
            long r10 = r10 | r13
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.TestTagKt.m614toOffsetmoWRBKg(int, int, int[], long):long");
    }
}
