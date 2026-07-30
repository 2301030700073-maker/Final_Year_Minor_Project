package b.b.f.m;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class o implements b.e.e.a.a {
    public static final int[] z = {1, 4, 5, 3, 2, 0};

    /* renamed from: a, reason: collision with root package name */
    public final Context f400a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f401b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f402c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f403d;
    public m e;
    public CharSequence m;
    public Drawable n;
    public View o;
    public r w;
    public boolean y;
    public int l = 0;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean t = false;
    public ArrayList u = new ArrayList();
    public CopyOnWriteArrayList v = new CopyOnWriteArrayList();
    public boolean x = false;
    public ArrayList f = new ArrayList();
    public ArrayList g = new ArrayList();
    public boolean h = true;
    public ArrayList i = new ArrayList();
    public ArrayList j = new ArrayList();
    public boolean k = true;

    public o(Context context) {
        boolean z2 = false;
        this.f400a = context;
        this.f401b = context.getResources();
        if (this.f401b.getConfiguration().keyboard != 1 && ViewConfiguration.get(this.f400a).shouldShowMenuShortcutsWhenKeyboardPresent()) {
            z2 = true;
        }
        this.f403d = z2;
    }

    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0) {
            int[] iArr = z;
            if (i5 < iArr.length) {
                int i6 = (iArr[i5] << 16) | (65535 & i3);
                r rVar = new r(this, i, i2, i3, i6, charSequence, this.l);
                ArrayList arrayList = this.f;
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        i4 = 0;
                        break;
                    }
                    if (((r) arrayList.get(size)).f411d <= i6) {
                        i4 = size + 1;
                        break;
                    }
                }
                arrayList.add(i4, rVar);
                p(true);
                return rVar;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f400a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            r rVar = (r) a(i, i2, i3, resolveInfo.loadLabel(packageManager));
            rVar.setIcon(resolveInfo.loadIcon(packageManager));
            rVar.setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = rVar;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(C c2, Context context) {
        this.v.add(new WeakReference(c2));
        c2.d(context, this);
        this.k = true;
    }

    public final void c(boolean z2) {
        if (this.t) {
            return;
        }
        this.t = true;
        Iterator it = this.v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            C c2 = (C) weakReference.get();
            if (c2 == null) {
                this.v.remove(weakReference);
            } else {
                c2.a(this, z2);
            }
        }
        this.t = false;
    }

    @Override // android.view.Menu
    public void clear() {
        r rVar = this.w;
        if (rVar != null) {
            d(rVar);
        }
        this.f.clear();
        p(true);
    }

    public void clearHeader() {
        this.n = null;
        this.m = null;
        this.o = null;
        p(false);
    }

    @Override // android.view.Menu
    public void close() {
        c(true);
    }

    public boolean d(r rVar) {
        boolean z2 = false;
        if (!this.v.isEmpty() && this.w == rVar) {
            y();
            Iterator it = this.v.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                C c2 = (C) weakReference.get();
                if (c2 == null) {
                    this.v.remove(weakReference);
                } else {
                    z2 = c2.e(this, rVar);
                    if (z2) {
                        break;
                    }
                }
            }
            x();
            if (z2) {
                this.w = null;
            }
        }
        return z2;
    }

    public boolean e(o oVar, MenuItem menuItem) {
        m mVar = this.e;
        return mVar != null && mVar.a(oVar, menuItem);
    }

    public boolean f(r rVar) {
        boolean z2 = false;
        if (this.v.isEmpty()) {
            return false;
        }
        y();
        Iterator it = this.v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            C c2 = (C) weakReference.get();
            if (c2 == null) {
                this.v.remove(weakReference);
            } else {
                z2 = c2.g(this, rVar);
                if (z2) {
                    break;
                }
            }
        }
        x();
        if (z2) {
            this.w = rVar;
        }
        return z2;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = (r) this.f.get(i2);
            if (rVar.f408a == i) {
                return rVar;
            }
            if (rVar.hasSubMenu() && (findItem = rVar.o.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public r g(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.u;
        arrayList.clear();
        h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (r) arrayList.get(0);
        }
        boolean n = n();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = (r) arrayList.get(i2);
            char c2 = n ? rVar.j : rVar.h;
            if ((c2 == keyData.meta[0] && (metaState & 2) == 0) || ((c2 == keyData.meta[2] && (metaState & 2) != 0) || (n && c2 == '\b' && i == 67))) {
                return rVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return (MenuItem) this.f.get(i);
    }

    public void h(List list, int i, KeyEvent keyEvent) {
        boolean n = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f.size();
            for (int i2 = 0; i2 < size; i2++) {
                r rVar = (r) this.f.get(i2);
                if (rVar.hasSubMenu()) {
                    rVar.o.h(list, i, keyEvent);
                }
                char c2 = n ? rVar.j : rVar.h;
                if (((modifiers & 69647) == ((n ? rVar.k : rVar.i) & 69647)) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c2 == cArr[0] || c2 == cArr[2] || (n && c2 == '\b' && i == 67)) && rVar.isEnabled()) {
                        list.add(rVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.y) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (((r) this.f.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public void i() {
        ArrayList l = l();
        if (this.k) {
            Iterator it = this.v.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                C c2 = (C) weakReference.get();
                if (c2 == null) {
                    this.v.remove(weakReference);
                } else {
                    z2 |= c2.c();
                }
            }
            if (z2) {
                this.i.clear();
                this.j.clear();
                int size = l.size();
                for (int i = 0; i < size; i++) {
                    r rVar = (r) l.get(i);
                    if (rVar.g()) {
                        this.i.add(rVar);
                    } else {
                        this.j.add(rVar);
                    }
                }
            } else {
                this.i.clear();
                this.j.clear();
                this.j.addAll(l());
            }
            this.k = false;
        }
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return g(i, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public o k() {
        return this;
    }

    public ArrayList l() {
        if (!this.h) {
            return this.g;
        }
        this.g.clear();
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            r rVar = (r) this.f.get(i);
            if (rVar.isVisible()) {
                this.g.add(rVar);
            }
        }
        this.h = false;
        this.k = true;
        return this.g;
    }

    public boolean m() {
        return this.x;
    }

    public boolean n() {
        return this.f402c;
    }

    public boolean o() {
        return this.f403d;
    }

    public void p(boolean z2) {
        if (this.p) {
            this.q = true;
            if (z2) {
                this.r = true;
                return;
            }
            return;
        }
        if (z2) {
            this.h = true;
            this.k = true;
        }
        if (this.v.isEmpty()) {
            return;
        }
        y();
        Iterator it = this.v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            C c2 = (C) weakReference.get();
            if (c2 == null) {
                this.v.remove(weakReference);
            } else {
                c2.j(z2);
            }
        }
        x();
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return q(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        r g = g(i, keyEvent);
        boolean r = g != null ? r(g, null, i2) : false;
        if ((i2 & 2) != 0) {
            c(true);
        }
        return r;
    }

    public boolean q(MenuItem menuItem, int i) {
        return r(menuItem, null, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean r(android.view.MenuItem r7, b.b.f.m.C r8, int r9) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.f.m.o.r(android.view.MenuItem, b.b.f.m.C, int):boolean");
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((r) this.f.get(i2)).f409b == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f.size() - i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size2 || ((r) this.f.get(i2)).f409b != i) {
                    break;
                }
                s(i2, false);
                i3 = i4;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((r) this.f.get(i2)).f408a == i) {
                break;
            } else {
                i2++;
            }
        }
        s(i2, true);
    }

    public final void s(int i, boolean z2) {
        if (i < 0 || i >= this.f.size()) {
            return;
        }
        this.f.remove(i);
        if (z2) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z2, boolean z3) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = (r) this.f.get(i2);
            if (rVar.f409b == i) {
                rVar.x = (rVar.x & (-5)) | (z3 ? 4 : 0);
                rVar.setCheckable(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z2) {
        this.x = z2;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z2) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = (r) this.f.get(i2);
            if (rVar.f409b == i) {
                rVar.setEnabled(z2);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z2) {
        int size = this.f.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = (r) this.f.get(i2);
            if (rVar.f409b == i && rVar.l(z2)) {
                z3 = true;
            }
        }
        if (z3) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z2) {
        this.f402c = z2;
        p(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f.size();
    }

    public void t(C c2) {
        Iterator it = this.v.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            C c3 = (C) weakReference.get();
            if (c3 == null || c3 == c2) {
                this.v.remove(weakReference);
            }
        }
    }

    public void u(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((K) item.getSubMenu()).u(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void v(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((K) item.getSubMenu()).v(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void w(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.f401b;
        if (view != null) {
            this.o = view;
            this.m = null;
            this.n = null;
        } else {
            if (i > 0) {
                this.m = resources.getText(i);
            } else if (charSequence != null) {
                this.m = charSequence;
            }
            if (i2 > 0) {
                this.n = b.e.b.b.e(this.f400a, i2);
            } else if (drawable != null) {
                this.n = drawable;
            }
            this.o = null;
        }
        p(false);
    }

    public void x() {
        this.p = false;
        if (this.q) {
            this.q = false;
            p(this.r);
        }
    }

    public void y() {
        if (this.p) {
            return;
        }
        this.p = true;
        this.q = false;
        this.r = false;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.f401b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f401b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        r rVar = (r) a(i, i2, i3, charSequence);
        K k = new K(this.f400a, this, rVar);
        rVar.o = k;
        k.setHeaderTitle(rVar.e);
        return k;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.f401b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f401b.getString(i4));
    }
}
