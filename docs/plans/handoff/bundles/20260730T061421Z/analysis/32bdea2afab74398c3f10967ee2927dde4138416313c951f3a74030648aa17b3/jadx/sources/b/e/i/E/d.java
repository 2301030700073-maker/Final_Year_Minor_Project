package b.e.i.E;

import android.R;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f753a;

    /* renamed from: b, reason: collision with root package name */
    public int f754b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f755c = -1;

    public d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f753a = accessibilityNodeInfo;
    }

    public static String c(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case QuickStepContract.SYSUI_STATE_TRACING_ENABLED /* 4096 */:
                return "ACTION_SCROLL_FORWARD";
            case QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case QuickStepContract.SYSUI_STATE_BUBBLES_EXPANDED /* 16384 */:
                return "ACTION_COPY";
            case QuickStepContract.SYSUI_STATE_GLOBAL_ACTIONS_SHOWING /* 32768 */:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case 524288:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionImeEnter:
                return "ACTION_IME_ENTER";
            default:
                switch (i) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] d(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public void a(b bVar) {
        this.f753a.addAction((AccessibilityNodeInfo.AccessibilityAction) bVar.f749a);
    }

    public final List b(String str) {
        ArrayList<Integer> integerArrayList = this.f753a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f753a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public CharSequence e() {
        return this.f753a.getContentDescription();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f753a;
        if (accessibilityNodeInfo == null) {
            if (dVar.f753a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(dVar.f753a)) {
            return false;
        }
        return this.f755c == dVar.f755c && this.f754b == dVar.f754b;
    }

    public Bundle f() {
        return this.f753a.getExtras();
    }

    public CharSequence g() {
        if (!(!b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty())) {
            return this.f753a.getText();
        }
        List b2 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List b3 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List b4 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List b5 = b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f753a.getText(), 0, this.f753a.getText().length()));
        for (int i = 0; i < b2.size(); i++) {
            spannableString.setSpan(new a(((Integer) b5.get(i)).intValue(), this, f().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) b2.get(i)).intValue(), ((Integer) b3.get(i)).intValue(), ((Integer) b4.get(i)).intValue());
        }
        return spannableString;
    }

    public void h(Object obj) {
        this.f753a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f752a);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f753a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.List] */
    public String toString() {
        ?? emptyList;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        this.f753a.getBoundsInParent(rect);
        sb.append("; boundsInParent: " + rect);
        this.f753a.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(this.f753a.getPackageName());
        sb.append("; className: ");
        sb.append(this.f753a.getClassName());
        sb.append("; text: ");
        sb.append(g());
        sb.append("; contentDescription: ");
        sb.append(e());
        sb.append("; viewId: ");
        sb.append(this.f753a.getViewIdResourceName());
        sb.append("; checkable: ");
        sb.append(this.f753a.isCheckable());
        sb.append("; checked: ");
        sb.append(this.f753a.isChecked());
        sb.append("; focusable: ");
        sb.append(this.f753a.isFocusable());
        sb.append("; focused: ");
        sb.append(this.f753a.isFocused());
        sb.append("; selected: ");
        sb.append(this.f753a.isSelected());
        sb.append("; clickable: ");
        sb.append(this.f753a.isClickable());
        sb.append("; longClickable: ");
        sb.append(this.f753a.isLongClickable());
        sb.append("; enabled: ");
        sb.append(this.f753a.isEnabled());
        sb.append("; password: ");
        sb.append(this.f753a.isPassword());
        sb.append("; scrollable: " + this.f753a.isScrollable());
        sb.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.f753a.getActionList();
        if (actionList != null) {
            emptyList = new ArrayList();
            int size = actionList.size();
            for (int i = 0; i < size; i++) {
                emptyList.add(new b(actionList.get(i), 0, null, null, null));
            }
        } else {
            emptyList = Collections.emptyList();
        }
        for (int i2 = 0; i2 < emptyList.size(); i2++) {
            b bVar = (b) emptyList.get(i2);
            String c2 = c(((AccessibilityNodeInfo.AccessibilityAction) bVar.f749a).getId());
            if (c2.equals("ACTION_UNKNOWN") && ((AccessibilityNodeInfo.AccessibilityAction) bVar.f749a).getLabel() != null) {
                c2 = ((AccessibilityNodeInfo.AccessibilityAction) bVar.f749a).getLabel().toString();
            }
            sb.append(c2);
            if (i2 != emptyList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
