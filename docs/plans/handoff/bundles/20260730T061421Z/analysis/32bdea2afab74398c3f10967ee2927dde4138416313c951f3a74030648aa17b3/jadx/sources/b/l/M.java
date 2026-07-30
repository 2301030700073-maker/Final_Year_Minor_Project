package b.l;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import b.m.b.w0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class M extends b.m.b.Q implements H {

    /* renamed from: a, reason: collision with root package name */
    public PreferenceGroup f1030a;

    /* renamed from: b, reason: collision with root package name */
    public List f1031b;

    /* renamed from: c, reason: collision with root package name */
    public List f1032c;

    /* renamed from: d, reason: collision with root package name */
    public List f1033d;
    public Runnable f = new J(this);
    public Handler e = new Handler();

    public M(PreferenceGroup preferenceGroup) {
        this.f1030a = preferenceGroup;
        this.f1030a.setOnPreferenceChangeInternalListener(this);
        this.f1031b = new ArrayList();
        this.f1032c = new ArrayList();
        this.f1033d = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f1030a;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            boolean z = ((PreferenceScreen) preferenceGroup2).j;
            if (this.mObservable.a()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        } else {
            if (this.mObservable.a()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = true;
        }
        f();
    }

    @Override // b.l.H
    public int a(String str) {
        int size = this.f1032c.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(str, ((Preference) this.f1032c.get(i)).mKey)) {
                return i;
            }
        }
        return -1;
    }

    public final List b(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = preferenceGroup.i();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Preference h = preferenceGroup.h(i3);
            if (h.mVisible) {
                if (!e(preferenceGroup) || i2 < preferenceGroup.g) {
                    arrayList.add(h);
                } else {
                    arrayList2.add(h);
                }
                if (h instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) h;
                    if (!preferenceGroup2.j()) {
                        continue;
                    } else {
                        if (e(preferenceGroup) && e(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : b(preferenceGroup2)) {
                            if (!e(preferenceGroup) || i2 < preferenceGroup.g) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i2++;
                        }
                    }
                } else {
                    i2++;
                }
            }
        }
        if (e(preferenceGroup) && i2 > preferenceGroup.g) {
            C0145f c0145f = new C0145f(preferenceGroup.mContext, arrayList2, preferenceGroup.mId);
            c0145f.mOnClickListener = new K(this, preferenceGroup);
            arrayList.add(c0145f);
        }
        return arrayList;
    }

    public final void c(List list, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.f164c);
        }
        int i = preferenceGroup.i();
        for (int i2 = 0; i2 < i; i2++) {
            Preference h = preferenceGroup.h(i2);
            list.add(h);
            L l = new L(h);
            if (!this.f1033d.contains(l)) {
                this.f1033d.add(l);
            }
            if (h instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) h;
                if (preferenceGroup2.j()) {
                    c(list, preferenceGroup2);
                }
            }
            h.setOnPreferenceChangeInternalListener(this);
        }
    }

    public Preference d(int i) {
        if (i < 0 || i >= getItemCount()) {
            return null;
        }
        return (Preference) this.f1032c.get(i);
    }

    public final boolean e(PreferenceGroup preferenceGroup) {
        return preferenceGroup.g != Integer.MAX_VALUE;
    }

    public void f() {
        Iterator it = this.f1031b.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.f1031b.size());
        this.f1031b = arrayList;
        c(arrayList, this.f1030a);
        this.f1032c = b(this.f1030a);
        S s = this.f1030a.mPreferenceManager;
        this.mObservable.b();
        Iterator it2 = this.f1031b.iterator();
        while (it2.hasNext()) {
            Objects.requireNonNull((Preference) it2.next());
        }
    }

    @Override // b.m.b.Q
    public int getItemCount() {
        return this.f1032c.size();
    }

    @Override // b.m.b.Q
    public long getItemId(int i) {
        if (this.mHasStableIds) {
            return d(i).getId();
        }
        return -1L;
    }

    @Override // b.m.b.Q
    public int getItemViewType(int i) {
        L l = new L(d(i));
        int indexOf = this.f1033d.indexOf(l);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.f1033d.size();
        this.f1033d.add(l);
        return size;
    }

    @Override // b.m.b.Q
    public void onBindViewHolder(w0 w0Var, int i) {
        V v = (V) w0Var;
        Preference d2 = d(i);
        Drawable background = v.itemView.getBackground();
        Drawable drawable = v.f1045a;
        if (background != drawable) {
            b.e.i.q.E(v.itemView, drawable);
        }
        TextView textView = (TextView) v.a(R.id.title);
        if (textView != null && v.f1046b != null && !textView.getTextColors().equals(v.f1046b)) {
            textView.setTextColor(v.f1046b);
        }
        d2.onBindViewHolder(v);
    }

    @Override // b.m.b.Q
    public w0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        L l = (L) this.f1033d.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, X.f1049a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = b.b.a.a(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(l.f1027a, viewGroup, false);
        if (inflate.getBackground() == null) {
            b.e.i.q.E(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = l.f1028b;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new V(inflate);
    }
}
