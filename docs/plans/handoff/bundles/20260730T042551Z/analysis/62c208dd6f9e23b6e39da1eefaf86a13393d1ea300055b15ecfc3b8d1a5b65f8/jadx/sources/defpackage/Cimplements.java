package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.joeykrim.rootcheck.R;
import defpackage.B;
import defpackage.C3893w;
import defpackage.QK;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: implements, reason: invalid class name */
/* loaded from: classes.dex */
public class Cimplements {

    /* renamed from: if, reason: not valid java name */
    public static final View.AccessibilityDelegate f13561if = new View.AccessibilityDelegate();

    /* renamed from: do, reason: not valid java name */
    public final View.AccessibilityDelegate f13562do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f13563do;

    /* renamed from: implements$do, reason: invalid class name */
    public static final class Cdo extends View.AccessibilityDelegate {

        /* renamed from: do, reason: not valid java name */
        public final Cimplements f13564do;

        public Cdo(Cimplements cimplements) {
            this.f13564do = cimplements;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f13564do.mo4080do(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            A mo2848if = this.f13564do.mo2848if(view);
            if (mo2848if != null) {
                return (AccessibilityNodeProvider) mo2848if.f0do;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f13564do.mo2847for(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            Object tag;
            Object tag2;
            Object tag3;
            int i;
            C3893w c3893w = new C3893w(accessibilityNodeInfo);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (Build.VERSION.SDK_INT >= 28) {
                tag = Boolean.valueOf(QK.Cgoto.m1912new(view));
            } else {
                tag = view.getTag(R.id.tag_screen_reader_focusable);
                if (!Boolean.class.isInstance(tag)) {
                    tag = null;
                }
            }
            Boolean bool = (Boolean) tag;
            boolean z = bool != null && bool.booleanValue();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 28) {
                accessibilityNodeInfo.setScreenReaderFocusable(z);
            } else {
                c3893w.m8504goto(1, z);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                tag2 = Boolean.valueOf(QK.Cgoto.m1909for(view));
            } else {
                tag2 = view.getTag(R.id.tag_accessibility_heading);
                if (!Boolean.class.isInstance(tag2)) {
                    tag2 = null;
                }
            }
            Boolean bool2 = (Boolean) tag2;
            boolean z2 = bool2 != null && bool2.booleanValue();
            if (i2 >= 28) {
                accessibilityNodeInfo.setHeading(z2);
            } else {
                c3893w.m8504goto(2, z2);
            }
            CharSequence m1866try = QK.m1866try(view);
            if (i2 >= 28) {
                accessibilityNodeInfo.setPaneTitle(m1866try);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", m1866try);
            }
            if (Build.VERSION.SDK_INT >= 30) {
                tag3 = QK.Cbreak.m1871if(view);
            } else {
                tag3 = view.getTag(R.id.tag_state_description);
                if (!CharSequence.class.isInstance(tag3)) {
                    tag3 = null;
                }
            }
            CharSequence charSequence = (CharSequence) tag3;
            if (i2 >= 30) {
                C3893w.Cif.m8522for(accessibilityNodeInfo, charSequence);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
            }
            this.f13564do.mo1356new(view, c3893w);
            CharSequence text = accessibilityNodeInfo.getText();
            if (i2 < 26) {
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                accessibilityNodeInfo.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        if (((WeakReference) sparseArray.valueAt(i3)).get() == null) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        sparseArray.remove(((Integer) arrayList.get(i4)).intValue());
                    }
                }
                ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
                if (clickableSpanArr != null && clickableSpanArr.length > 0) {
                    c3893w.f16161do.getExtras().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.accessibility_action_clickable_span);
                    SparseArray sparseArray2 = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        view.setTag(R.id.tag_accessibility_clickable_spans, sparseArray2);
                    }
                    for (int i5 = 0; i5 < clickableSpanArr.length; i5++) {
                        ClickableSpan clickableSpan = clickableSpanArr[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sparseArray2.size()) {
                                i = C3893w.f16159for;
                                C3893w.f16159for = i + 1;
                                break;
                            } else {
                                if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i6)).get())) {
                                    i = sparseArray2.keyAt(i6);
                                    break;
                                }
                                i6++;
                            }
                        }
                        sparseArray2.put(i, new WeakReference(clickableSpanArr[i5]));
                        ClickableSpan clickableSpan2 = clickableSpanArr[i5];
                        Spanned spanned = (Spanned) text;
                        c3893w.m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        c3893w.m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        c3893w.m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        c3893w.m8503for("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i));
                    }
                }
            }
            List list = (List) view.getTag(R.id.tag_accessibility_actions);
            if (list == null) {
                list = Collections.emptyList();
            }
            for (int i7 = 0; i7 < list.size(); i7++) {
                c3893w.m8505if((C3893w.Cdo) list.get(i7));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f13564do.mo4579try(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f13564do.mo4079case(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.f13564do.mo3759else(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEvent(View view, int i) {
            this.f13564do.mo4577goto(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f13564do.mo4578this(view, accessibilityEvent);
        }
    }

    public Cimplements() {
        this(f13561if);
    }

    /* renamed from: case */
    public boolean mo4079case(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f13562do.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* renamed from: do */
    public boolean mo4080do(View view, AccessibilityEvent accessibilityEvent) {
        return this.f13562do.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: else */
    public boolean mo3759else(View view, int i, Bundle bundle) {
        boolean z;
        WeakReference weakReference;
        boolean z2;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.emptyList();
        }
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                break;
            }
            C3893w.Cdo cdo = (C3893w.Cdo) list.get(i2);
            if (cdo.m8510do() == i) {
                B b = cdo.f16176do;
                if (b != null) {
                    Class<? extends B.Cdo> cls = cdo.f16177do;
                    if (cls != null) {
                        try {
                            cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]).getClass();
                        } catch (Exception unused) {
                        }
                    }
                    z = b.mo136case(view);
                }
            } else {
                i2++;
            }
        }
        z = false;
        if (!z) {
            z = this.f13562do.performAccessibilityAction(view, i, bundle);
        }
        if (z || i != R.id.accessibility_action_clickable_span || bundle == null) {
            return z;
        }
        int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i3)) != null) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (clickableSpan != null) {
                CharSequence text = view.createAccessibilityNodeInfo().getText();
                ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
                for (int i4 = 0; clickableSpanArr != null && i4 < clickableSpanArr.length; i4++) {
                    if (clickableSpan.equals(clickableSpanArr[i4])) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                clickableSpan.onClick(view);
                z3 = true;
            }
        }
        return z3;
    }

    /* renamed from: for */
    public void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
        this.f13562do.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    /* renamed from: goto */
    public void mo4577goto(View view, int i) {
        this.f13562do.sendAccessibilityEvent(view, i);
    }

    /* renamed from: if */
    public A mo2848if(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.f13562do.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new A(accessibilityNodeProvider);
        }
        return null;
    }

    /* renamed from: new */
    public void mo1356new(View view, C3893w c3893w) {
        this.f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
    }

    /* renamed from: this */
    public void mo4578this(View view, AccessibilityEvent accessibilityEvent) {
        this.f13562do.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    /* renamed from: try */
    public void mo4579try(View view, AccessibilityEvent accessibilityEvent) {
        this.f13562do.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public Cimplements(View.AccessibilityDelegate accessibilityDelegate) {
        this.f13562do = accessibilityDelegate;
        this.f13563do = new Cdo(this);
    }
}
