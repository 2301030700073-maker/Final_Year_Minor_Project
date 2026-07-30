package defpackage;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.google.android.gms.ads.AdRequest;
import defpackage.B;
import j$.time.Duration;
import j$.time.TimeConversions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3893w {

    /* renamed from: for, reason: not valid java name */
    public static int f16159for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityNodeInfo f16161do;

    /* renamed from: do, reason: not valid java name */
    public int f16160do = -1;

    /* renamed from: if, reason: not valid java name */
    public int f16162if = -1;

    /* renamed from: w$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: do, reason: not valid java name */
        public final Object f16163do;

        public Ccase(AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo) {
            this.f16163do = collectionItemInfo;
        }

        /* renamed from: do, reason: not valid java name */
        public static Ccase m8509do(int i, int i2, int i3, boolean z, boolean z2, int i4) {
            return new Ccase(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
        }
    }

    /* renamed from: w$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: break, reason: not valid java name */
        public static final Cdo f16164break;

        /* renamed from: case, reason: not valid java name */
        public static final Cdo f16165case;

        /* renamed from: catch, reason: not valid java name */
        public static final Cdo f16166catch;

        /* renamed from: else, reason: not valid java name */
        public static final Cdo f16168else;

        /* renamed from: for, reason: not valid java name */
        public static final Cdo f16169for;

        /* renamed from: goto, reason: not valid java name */
        public static final Cdo f16170goto;

        /* renamed from: new, reason: not valid java name */
        public static final Cdo f16172new;

        /* renamed from: this, reason: not valid java name */
        public static final Cdo f16173this;

        /* renamed from: try, reason: not valid java name */
        public static final Cdo f16174try;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f16175do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final B f16176do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Class<? extends B.Cdo> f16177do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f16178do;

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f16167do = new Cdo(1);

        /* renamed from: if, reason: not valid java name */
        public static final Cdo f16171if = new Cdo(2);

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction21;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction22;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction23;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction24;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction25;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction26;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction27;
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction28;
            new Cdo(4);
            new Cdo(8);
            f16169for = new Cdo(16);
            new Cdo(32);
            new Cdo(64);
            new Cdo(128);
            new Cdo(256, B.Cif.class);
            new Cdo(AdRequest.MAX_CONTENT_URL_LENGTH, B.Cif.class);
            new Cdo(1024, B.Cfor.class);
            new Cdo(2048, B.Cfor.class);
            f16172new = new Cdo(4096);
            f16174try = new Cdo(Utility.DEFAULT_STREAM_BUFFER_SIZE);
            new Cdo(16384);
            new Cdo(32768);
            new Cdo(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            new Cdo(131072, B.Celse.class);
            f16165case = new Cdo(262144);
            f16168else = new Cdo(524288);
            f16170goto = new Cdo(1048576);
            new Cdo(2097152, B.Cgoto.class);
            int i = Build.VERSION.SDK_INT;
            new Cdo(i >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            if (i >= 23) {
                accessibilityAction28 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION;
                accessibilityAction = accessibilityAction28;
            } else {
                accessibilityAction = null;
            }
            new Cdo(accessibilityAction, R.id.accessibilityActionScrollToPosition, null, null, B.Ctry.class);
            if (i >= 23) {
                accessibilityAction27 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP;
                accessibilityAction2 = accessibilityAction27;
            } else {
                accessibilityAction2 = null;
            }
            f16173this = new Cdo(accessibilityAction2, R.id.accessibilityActionScrollUp, null, null, null);
            if (i >= 23) {
                accessibilityAction26 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT;
                accessibilityAction3 = accessibilityAction26;
            } else {
                accessibilityAction3 = null;
            }
            new Cdo(accessibilityAction3, R.id.accessibilityActionScrollLeft, null, null, null);
            if (i >= 23) {
                accessibilityAction25 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN;
                accessibilityAction4 = accessibilityAction25;
            } else {
                accessibilityAction4 = null;
            }
            f16164break = new Cdo(accessibilityAction4, R.id.accessibilityActionScrollDown, null, null, null);
            if (i >= 23) {
                accessibilityAction24 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT;
                accessibilityAction5 = accessibilityAction24;
            } else {
                accessibilityAction5 = null;
            }
            new Cdo(accessibilityAction5, R.id.accessibilityActionScrollRight, null, null, null);
            new Cdo(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            if (i >= 29) {
                accessibilityAction23 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
                accessibilityAction6 = accessibilityAction23;
            } else {
                accessibilityAction6 = null;
            }
            new Cdo(accessibilityAction6, R.id.accessibilityActionPageDown, null, null, null);
            new Cdo(i >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            if (i >= 29) {
                accessibilityAction22 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
                accessibilityAction7 = accessibilityAction22;
            } else {
                accessibilityAction7 = null;
            }
            new Cdo(accessibilityAction7, R.id.accessibilityActionPageRight, null, null, null);
            if (i >= 23) {
                accessibilityAction21 = AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK;
                accessibilityAction8 = accessibilityAction21;
            } else {
                accessibilityAction8 = null;
            }
            new Cdo(accessibilityAction8, R.id.accessibilityActionContextClick, null, null, null);
            if (i >= 24) {
                accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS;
                accessibilityAction9 = accessibilityAction20;
            } else {
                accessibilityAction9 = null;
            }
            f16166catch = new Cdo(accessibilityAction9, R.id.accessibilityActionSetProgress, null, null, B.Ccase.class);
            if (i >= 26) {
                accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW;
                accessibilityAction10 = accessibilityAction19;
            } else {
                accessibilityAction10 = null;
            }
            new Cdo(accessibilityAction10, R.id.accessibilityActionMoveWindow, null, null, B.Cnew.class);
            if (i >= 28) {
                accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
                accessibilityAction11 = accessibilityAction18;
            } else {
                accessibilityAction11 = null;
            }
            new Cdo(accessibilityAction11, R.id.accessibilityActionShowTooltip, null, null, null);
            if (i >= 28) {
                accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
                accessibilityAction12 = accessibilityAction17;
            } else {
                accessibilityAction12 = null;
            }
            new Cdo(accessibilityAction12, R.id.accessibilityActionHideTooltip, null, null, null);
            if (i >= 30) {
                accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD;
                accessibilityAction13 = accessibilityAction16;
            } else {
                accessibilityAction13 = null;
            }
            new Cdo(accessibilityAction13, R.id.accessibilityActionPressAndHold, null, null, null);
            if (i >= 30) {
                accessibilityAction15 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
                accessibilityAction14 = accessibilityAction15;
            } else {
                accessibilityAction14 = null;
            }
            new Cdo(accessibilityAction14, R.id.accessibilityActionImeEnter, null, null, null);
            new Cdo(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
            new Cdo(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
            new Cdo(i >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
            new Cdo(i >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
            new Cdo(i >= 34 ? Cnew.m8528do() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
        }

        public Cdo(int i) {
            this(null, i, null, null, null);
        }

        /* renamed from: do, reason: not valid java name */
        public final int m8510do() {
            return ((AccessibilityNodeInfo.AccessibilityAction) this.f16178do).getId();
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Cdo)) {
                return false;
            }
            Object obj2 = ((Cdo) obj).f16178do;
            Object obj3 = this.f16178do;
            return obj3 == null ? obj2 == null : obj3.equals(obj2);
        }

        public final int hashCode() {
            Object obj = this.f16178do;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
            String m8493new = C3893w.m8493new(this.f16175do);
            if (m8493new.equals("ACTION_UNKNOWN")) {
                Object obj = this.f16178do;
                if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                    m8493new = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
                }
            }
            sb.append(m8493new);
            return sb.toString();
        }

        public Cdo(int i, Class cls) {
            this(null, i, null, null, cls);
        }

        public Cdo(Object obj, int i, String str, B b, Class cls) {
            this.f16175do = i;
            this.f16176do = b;
            if (obj == null) {
                this.f16178do = new AccessibilityNodeInfo.AccessibilityAction(i, str);
            } else {
                this.f16178do = obj;
            }
            this.f16177do = cls;
        }
    }

    /* renamed from: w$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: break, reason: not valid java name */
        public static void m8511break(AccessibilityNodeInfo accessibilityNodeInfo, String str) {
            accessibilityNodeInfo.setUniqueId(str);
        }

        /* renamed from: case, reason: not valid java name */
        public static C3893w m8512case(AccessibilityNodeInfo accessibilityNodeInfo, int i) {
            return C3893w.m8494throw(accessibilityNodeInfo.getParent(i));
        }

        /* renamed from: do, reason: not valid java name */
        public static Ccase m8513do(boolean z, int i, int i2, int i3, int i4, boolean z2, String str, String str2) {
            return new Ccase(new AccessibilityNodeInfo.CollectionItemInfo.Builder().setHeading(z).setColumnIndex(i).setRowIndex(i2).setColumnSpan(i3).setRowSpan(i4).setSelected(z2).setRowTitle(str).setColumnTitle(str2).build());
        }

        /* renamed from: else, reason: not valid java name */
        public static String m8514else(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getUniqueId();
        }

        /* renamed from: for, reason: not valid java name */
        public static String m8515for(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getColumnTitle();
        }

        /* renamed from: goto, reason: not valid java name */
        public static boolean m8516goto(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isTextSelectable();
        }

        /* renamed from: if, reason: not valid java name */
        public static C3893w m8517if(AccessibilityNodeInfo accessibilityNodeInfo, int i, int i2) {
            return C3893w.m8494throw(accessibilityNodeInfo.getChild(i, i2));
        }

        /* renamed from: new, reason: not valid java name */
        public static String m8518new(Object obj) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) obj).getRowTitle();
        }

        /* renamed from: this, reason: not valid java name */
        public static void m8519this(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setTextSelectable(z);
        }

        /* renamed from: try, reason: not valid java name */
        public static AccessibilityNodeInfo.ExtraRenderingInfo m8520try(AccessibilityNodeInfo accessibilityNodeInfo) {
            AccessibilityNodeInfo.ExtraRenderingInfo extraRenderingInfo;
            extraRenderingInfo = accessibilityNodeInfo.getExtraRenderingInfo();
            return extraRenderingInfo;
        }
    }

    /* renamed from: w$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Object m8521do(int i, float f, float f2, float f3) {
            return new AccessibilityNodeInfo.RangeInfo(i, f, f2, f3);
        }

        /* renamed from: for, reason: not valid java name */
        public static void m8522for(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }

        /* renamed from: if, reason: not valid java name */
        public static CharSequence m8523if(AccessibilityNodeInfo accessibilityNodeInfo) {
            CharSequence stateDescription;
            stateDescription = accessibilityNodeInfo.getStateDescription();
            return stateDescription;
        }
    }

    /* renamed from: w$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: break, reason: not valid java name */
        public static void m8524break(AccessibilityNodeInfo accessibilityNodeInfo, long j) {
            accessibilityNodeInfo.setMinDurationBetweenContentChanges(TimeConversions.convert(Duration.ofMillis(j)));
        }

        /* renamed from: case, reason: not valid java name */
        public static boolean m8525case(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.isAccessibilityDataSensitive();
        }

        /* renamed from: catch, reason: not valid java name */
        public static void m8526catch(AccessibilityNodeInfo accessibilityNodeInfo, View view, boolean z) {
            accessibilityNodeInfo.setQueryFromAppProcessEnabled(view, z);
        }

        /* renamed from: class, reason: not valid java name */
        public static void m8527class(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setRequestInitialAccessibilityFocus(z);
        }

        /* renamed from: do, reason: not valid java name */
        public static AccessibilityNodeInfo.AccessibilityAction m8528do() {
            return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
        }

        /* renamed from: else, reason: not valid java name */
        public static void m8529else(AccessibilityNodeInfo accessibilityNodeInfo, boolean z) {
            accessibilityNodeInfo.setAccessibilityDataSensitive(z);
        }

        /* renamed from: for, reason: not valid java name */
        public static CharSequence m8530for(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getContainerTitle();
        }

        /* renamed from: goto, reason: not valid java name */
        public static void m8531goto(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.setBoundsInWindow(rect);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m8532if(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
            accessibilityNodeInfo.getBoundsInWindow(rect);
        }

        /* renamed from: new, reason: not valid java name */
        public static long m8533new(AccessibilityNodeInfo accessibilityNodeInfo) {
            Duration convert;
            convert = TimeConversions.convert(accessibilityNodeInfo.getMinDurationBetweenContentChanges());
            return convert.toMillis();
        }

        /* renamed from: this, reason: not valid java name */
        public static void m8534this(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setContainerTitle(charSequence);
        }

        /* renamed from: try, reason: not valid java name */
        public static boolean m8535try(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.hasRequestInitialAccessibilityFocus();
        }
    }

    /* renamed from: w$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public final Object f16179do;

        public Ctry(AccessibilityNodeInfo.CollectionInfo collectionInfo) {
            this.f16179do = collectionInfo;
        }

        /* renamed from: do, reason: not valid java name */
        public static Ctry m8536do(int i, int i2, int i3) {
            return new Ctry(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, false, i3));
        }
    }

    @Deprecated
    public C3893w(AccessibilityNodeInfo accessibilityNodeInfo, int i) {
        this.f16161do = accessibilityNodeInfo;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m8493new(int i) {
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
            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST /* 65536 */:
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
            case R.id.accessibilityActionScrollInDirection:
                return "ACTION_SCROLL_IN_DIRECTION";
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
                                switch (i) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static C3893w m8494throw(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (accessibilityNodeInfo != null) {
            return new C3893w(accessibilityNodeInfo, 0);
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m8495break(CharSequence charSequence) {
        this.f16161do.setClassName(charSequence);
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public final void m8496case(Rect rect) {
        this.f16161do.getBoundsInParent(rect);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m8497catch(Ccase ccase) {
        this.f16161do.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ccase.f16163do);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m8498class(CharSequence charSequence) {
        this.f16161do.setContentDescription(charSequence);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m8499const(String str) {
        int i = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f16161do;
        if (i >= 26) {
            accessibilityNodeInfo.setHintText(str);
        } else {
            accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8500do(int i) {
        this.f16161do.addAction(i);
    }

    /* renamed from: else, reason: not valid java name */
    public final CharSequence m8501else() {
        boolean z = !m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f16161do;
        if (!z) {
            return accessibilityNodeInfo.getText();
        }
        ArrayList m8503for = m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        ArrayList m8503for2 = m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        ArrayList m8503for3 = m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        ArrayList m8503for4 = m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(accessibilityNodeInfo.getText(), 0, accessibilityNodeInfo.getText().length()));
        for (int i = 0; i < m8503for.size(); i++) {
            spannableString.setSpan(new Ctransient(((Integer) m8503for4.get(i)).intValue(), this, accessibilityNodeInfo.getExtras().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) m8503for.get(i)).intValue(), ((Integer) m8503for2.get(i)).intValue(), ((Integer) m8503for3.get(i)).intValue());
        }
        return spannableString;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C3893w)) {
            return false;
        }
        C3893w c3893w = (C3893w) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
        AccessibilityNodeInfo accessibilityNodeInfo2 = this.f16161do;
        if (accessibilityNodeInfo2 == null) {
            if (accessibilityNodeInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo2.equals(accessibilityNodeInfo)) {
            return false;
        }
        return this.f16162if == c3893w.f16162if && this.f16160do == c3893w.f16160do;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m8502final(boolean z) {
        this.f16161do.setScrollable(z);
    }

    /* renamed from: for, reason: not valid java name */
    public final ArrayList m8503for(String str) {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f16161do;
        ArrayList<Integer> integerArrayList = accessibilityNodeInfo.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        accessibilityNodeInfo.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8504goto(int i, boolean z) {
        Bundle extras = this.f16161do.getExtras();
        if (extras != null) {
            int i2 = extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (~i);
            if (!z) {
                i = 0;
            }
            extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i | i2);
        }
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f16161do;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8505if(Cdo cdo) {
        this.f16161do.addAction((AccessibilityNodeInfo.AccessibilityAction) cdo.f16178do);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m8506super(CharSequence charSequence) {
        this.f16161do.setText(charSequence);
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public final void m8507this(Rect rect) {
        this.f16161do.setBoundsInParent(rect);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.ArrayList] */
    public final String toString() {
        ?? emptyList;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        m8496case(rect);
        sb.append("; boundsInParent: " + rect);
        AccessibilityNodeInfo accessibilityNodeInfo = this.f16161do;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        sb.append("; boundsInScreen: " + rect);
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            Cnew.m8532if(accessibilityNodeInfo, rect);
        } else {
            Rect rect2 = (Rect) accessibilityNodeInfo.getExtras().getParcelable("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY");
            if (rect2 != null) {
                rect.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
        }
        sb.append("; boundsInWindow: " + rect);
        sb.append("; packageName: ");
        sb.append(accessibilityNodeInfo.getPackageName());
        sb.append("; className: ");
        sb.append(accessibilityNodeInfo.getClassName());
        sb.append("; text: ");
        sb.append(m8501else());
        sb.append("; error: ");
        sb.append(accessibilityNodeInfo.getError());
        sb.append("; maxTextLength: ");
        sb.append(accessibilityNodeInfo.getMaxTextLength());
        sb.append("; stateDescription: ");
        sb.append(i >= 30 ? Cif.m8523if(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"));
        sb.append("; contentDescription: ");
        sb.append(accessibilityNodeInfo.getContentDescription());
        sb.append("; tooltipText: ");
        sb.append(i >= 28 ? accessibilityNodeInfo.getTooltipText() : accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY"));
        sb.append("; viewIdResName: ");
        sb.append(accessibilityNodeInfo.getViewIdResourceName());
        sb.append("; uniqueId: ");
        sb.append(i >= 33 ? Cfor.m8514else(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY"));
        sb.append("; checkable: ");
        sb.append(accessibilityNodeInfo.isCheckable());
        sb.append("; checked: ");
        sb.append(accessibilityNodeInfo.isChecked());
        sb.append("; focusable: ");
        sb.append(accessibilityNodeInfo.isFocusable());
        sb.append("; focused: ");
        sb.append(accessibilityNodeInfo.isFocused());
        sb.append("; selected: ");
        sb.append(accessibilityNodeInfo.isSelected());
        sb.append("; clickable: ");
        sb.append(accessibilityNodeInfo.isClickable());
        sb.append("; longClickable: ");
        sb.append(accessibilityNodeInfo.isLongClickable());
        sb.append("; contextClickable: ");
        sb.append(i >= 23 ? accessibilityNodeInfo.isContextClickable() : false);
        sb.append("; enabled: ");
        sb.append(accessibilityNodeInfo.isEnabled());
        sb.append("; password: ");
        sb.append(accessibilityNodeInfo.isPassword());
        sb.append("; scrollable: " + accessibilityNodeInfo.isScrollable());
        sb.append("; containerTitle: ");
        sb.append(i >= 34 ? Cnew.m8530for(accessibilityNodeInfo) : accessibilityNodeInfo.getExtras().getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY"));
        sb.append("; granularScrollingSupported: ");
        sb.append(m8508try(67108864));
        sb.append("; importantForAccessibility: ");
        sb.append(i >= 24 ? accessibilityNodeInfo.isImportantForAccessibility() : true);
        sb.append("; visible: ");
        sb.append(accessibilityNodeInfo.isVisibleToUser());
        sb.append("; isTextSelectable: ");
        sb.append(i >= 33 ? Cfor.m8516goto(accessibilityNodeInfo) : m8508try(8388608));
        sb.append("; accessibilityDataSensitive: ");
        sb.append(i >= 34 ? Cnew.m8525case(accessibilityNodeInfo) : m8508try(64));
        sb.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = accessibilityNodeInfo.getActionList();
        if (actionList != null) {
            emptyList = new ArrayList();
            int size = actionList.size();
            for (int i2 = 0; i2 < size; i2++) {
                emptyList.add(new Cdo(actionList.get(i2), 0, null, null, null));
            }
        } else {
            emptyList = Collections.emptyList();
        }
        for (int i3 = 0; i3 < emptyList.size(); i3++) {
            Cdo cdo = (Cdo) emptyList.get(i3);
            String m8493new = m8493new(cdo.m8510do());
            if (m8493new.equals("ACTION_UNKNOWN")) {
                Object obj = cdo.f16178do;
                if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                    m8493new = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
                }
            }
            sb.append(m8493new);
            if (i3 != emptyList.size() - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m8508try(int i) {
        Bundle extras = this.f16161do.getExtras();
        return extras != null && (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i) == i;
    }

    public C3893w(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f16161do = accessibilityNodeInfo;
    }
}
