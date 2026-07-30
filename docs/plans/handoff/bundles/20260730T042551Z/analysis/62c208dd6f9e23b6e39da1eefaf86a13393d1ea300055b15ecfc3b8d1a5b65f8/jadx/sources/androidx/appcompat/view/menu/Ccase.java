package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import com.facebook.appevents.codeless.internal.Constants;
import defpackage.C0466Ra;
import defpackage.UK;
import defpackage.XF;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: androidx.appcompat.view.menu.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase implements XF {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f5399do = {1, 4, 5, 3, 2, 0};

    /* renamed from: break, reason: not valid java name */
    public boolean f5400break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5403do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Resources f5404do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f5405do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5406do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f5407do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f5408do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5409do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cgoto> f5410do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5412do;

    /* renamed from: for, reason: not valid java name */
    public final ArrayList<Cgoto> f5414for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5415for;

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<Cgoto> f5417if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5418if;

    /* renamed from: new, reason: not valid java name */
    public final ArrayList<Cgoto> f5419new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5420new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f5402do = 0;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f5423try = false;

    /* renamed from: case, reason: not valid java name */
    public boolean f5401case = false;

    /* renamed from: else, reason: not valid java name */
    public boolean f5413else = false;

    /* renamed from: goto, reason: not valid java name */
    public boolean f5416goto = false;

    /* renamed from: try, reason: not valid java name */
    public final ArrayList<Cgoto> f5422try = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArrayList<WeakReference<Cbreak>> f5411do = new CopyOnWriteArrayList<>();

    /* renamed from: this, reason: not valid java name */
    public boolean f5421this = false;

    /* renamed from: androidx.appcompat.view.menu.case$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        void mo2229do(Ccase ccase);

        /* renamed from: if */
        boolean mo2230if(Ccase ccase, MenuItem menuItem);
    }

    /* renamed from: androidx.appcompat.view.menu.case$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        boolean mo3313do(Cgoto cgoto);
    }

    public Ccase(Context context) {
        boolean z;
        boolean z2 = false;
        this.f5403do = context;
        Resources resources = context.getResources();
        this.f5404do = resources;
        this.f5410do = new ArrayList<>();
        this.f5417if = new ArrayList<>();
        this.f5415for = true;
        this.f5414for = new ArrayList<>();
        this.f5419new = new ArrayList<>();
        this.f5420new = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = UK.f3862do;
            if (Build.VERSION.SDK_INT >= 28) {
                z = UK.Cif.m2380if(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", Constants.PLATFORM);
                z = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (z) {
                z2 = true;
            }
        }
        this.f5418if = z2;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return mo3329do(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f5403do.getPackageManager();
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
            Cgoto mo3329do = mo3329do(i, i2, i3, resolveInfo.loadLabel(packageManager));
            mo3329do.setIcon(resolveInfo.loadIcon(packageManager));
            mo3329do.f5468do = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = mo3329do;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: break, reason: not valid java name */
    public String mo3323break() {
        return "android:menu:actionviewstates";
    }

    /* renamed from: case, reason: not valid java name */
    public boolean mo3324case(Cgoto cgoto) {
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        boolean z = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        m3331extends();
        Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<Cbreak> next = it.next();
            Cbreak cbreak = next.get();
            if (cbreak == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                z = cbreak.mo979const(cgoto);
                if (z) {
                    break;
                }
            }
        }
        m3328default();
        if (z) {
            this.f5408do = cgoto;
        }
        return z;
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccase mo3325catch() {
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public final ArrayList<Cgoto> m3326class() {
        boolean z = this.f5415for;
        ArrayList<Cgoto> arrayList = this.f5417if;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList<Cgoto> arrayList2 = this.f5410do;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            Cgoto cgoto = arrayList2.get(i);
            if (cgoto.isVisible()) {
                arrayList.add(cgoto);
            }
        }
        this.f5415for = false;
        this.f5420new = true;
        return arrayList;
    }

    @Override // android.view.Menu
    public final void clear() {
        Cgoto cgoto = this.f5408do;
        if (cgoto != null) {
            mo3338new(cgoto);
        }
        this.f5410do.clear();
        mo3345throw(true);
    }

    public final void clearHeader() {
        this.f5405do = null;
        this.f5409do = null;
        this.f5406do = null;
        mo3345throw(false);
    }

    @Override // android.view.Menu
    public final void close() {
        m3333for(true);
    }

    /* renamed from: const, reason: not valid java name */
    public boolean mo3327const() {
        return this.f5421this;
    }

    /* renamed from: default, reason: not valid java name */
    public final void m3328default() {
        this.f5423try = false;
        if (this.f5401case) {
            this.f5401case = false;
            mo3345throw(this.f5413else);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public Cgoto mo3329do(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 < 0 || i5 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i6 = (f5399do[i5] << 16) | (65535 & i3);
        Cgoto cgoto = new Cgoto(this, i, i2, i3, i6, charSequence, this.f5402do);
        ArrayList<Cgoto> arrayList = this.f5410do;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                i4 = 0;
                break;
            }
            if (arrayList.get(size).f5488new <= i6) {
                i4 = size + 1;
                break;
            }
        }
        arrayList.add(i4, cgoto);
        mo3345throw(true);
        return cgoto;
    }

    /* renamed from: else, reason: not valid java name */
    public final Cgoto m3330else(int i, KeyEvent keyEvent) {
        ArrayList<Cgoto> arrayList = this.f5422try;
        arrayList.clear();
        m3334goto(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean mo3332final = mo3332final();
        for (int i2 = 0; i2 < size; i2++) {
            Cgoto cgoto = arrayList.get(i2);
            char c = mo3332final ? cgoto.f5484if : cgoto.f5465do;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (mo3332final && c == '\b' && i == 67))) {
                return cgoto;
            }
        }
        return null;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m3331extends() {
        if (this.f5423try) {
            return;
        }
        this.f5423try = true;
        this.f5401case = false;
        this.f5413else = false;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean mo3332final() {
        return this.f5412do;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            Cgoto cgoto = this.f5410do.get(i2);
            if (cgoto.f5466do == i) {
                return cgoto;
            }
            if (cgoto.hasSubMenu() && (findItem = cgoto.f5476do.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3333for(boolean z) {
        if (this.f5416goto) {
            return;
        }
        this.f5416goto = true;
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<Cbreak> next = it.next();
            Cbreak cbreak = next.get();
            if (cbreak == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                cbreak.mo3319for(this, z);
            }
        }
        this.f5416goto = false;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return this.f5410do.get(i);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3334goto(ArrayList arrayList, int i, KeyEvent keyEvent) {
        int i2;
        boolean mo3332final = mo3332final();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            ArrayList<Cgoto> arrayList2 = this.f5410do;
            int size = arrayList2.size();
            while (i2 < size) {
                Cgoto cgoto = arrayList2.get(i2);
                if (cgoto.hasSubMenu()) {
                    cgoto.f5476do.m3334goto(arrayList, i, keyEvent);
                }
                char c = mo3332final ? cgoto.f5484if : cgoto.f5465do;
                if (((modifiers & 69647) == ((mo3332final ? cgoto.f5464case : cgoto.f5492try) & 69647)) && c != 0) {
                    char[] cArr = keyData.meta;
                    if (c != cArr[0] && c != cArr[2]) {
                        if (mo3332final && c == '\b') {
                            i2 = i != 67 ? i2 + 1 : 0;
                        }
                    }
                    if (cgoto.isEnabled()) {
                        arrayList.add(cgoto);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f5400break) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f5410do.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3335if(Cbreak cbreak, Context context) {
        this.f5411do.add(new WeakReference<>(cbreak));
        cbreak.mo980else(context, this);
        this.f5420new = true;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3336import(Cbreak cbreak) {
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<Cbreak> next = it.next();
            Cbreak cbreak2 = next.get();
            if (cbreak2 == null || cbreak2 == cbreak) {
                copyOnWriteArrayList.remove(next);
            }
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m3330else(i, keyEvent) != null;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m3337native(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(mo3323break());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((Cconst) item.getSubMenu()).m3337native(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    /* renamed from: new, reason: not valid java name */
    public boolean mo3338new(Cgoto cgoto) {
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        boolean z = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f5408do == cgoto) {
            m3331extends();
            Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference<Cbreak> next = it.next();
                Cbreak cbreak = next.get();
                if (cbreak == null) {
                    copyOnWriteArrayList.remove(next);
                } else {
                    z = cbreak.mo978catch(cgoto);
                    if (z) {
                        break;
                    }
                }
            }
            m3328default();
            if (z) {
                this.f5408do = null;
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return m3348while(findItem(i), null, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        Cgoto m3330else = m3330else(i, keyEvent);
        boolean m3348while = m3330else != null ? m3348while(m3330else, null, i2) : false;
        if ((i2 & 2) != 0) {
            m3333for(true);
        }
        return m3348while;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m3339public(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null) {
            CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
            if (copyOnWriteArrayList.isEmpty()) {
                return;
            }
            Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference<Cbreak> next = it.next();
                Cbreak cbreak = next.get();
                if (cbreak == null) {
                    copyOnWriteArrayList.remove(next);
                } else {
                    int id = cbreak.getId();
                    if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                        cbreak.mo3318class(parcelable);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        ArrayList<Cgoto> arrayList;
        int size = size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            arrayList = this.f5410do;
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (arrayList.get(i3).f5485if == i) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            int size2 = arrayList.size() - i3;
            while (true) {
                int i4 = i2 + 1;
                if (i2 >= size2 || arrayList.get(i3).f5485if != i) {
                    break;
                }
                if (i3 >= 0 && i3 < arrayList.size()) {
                    arrayList.remove(i3);
                }
                i2 = i4;
            }
            mo3345throw(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        ArrayList<Cgoto> arrayList;
        int size = size();
        int i2 = 0;
        while (true) {
            arrayList = this.f5410do;
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (arrayList.get(i2).f5466do == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0 || i2 >= arrayList.size()) {
            return;
        }
        arrayList.remove(i2);
        mo3345throw(true);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3340return(Bundle bundle) {
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
                ((Cconst) item.getSubMenu()).m3340return(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(mo3323break(), sparseArray);
        }
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList<Cgoto> arrayList = this.f5410do;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cgoto cgoto = arrayList.get(i2);
            if (cgoto.f5485if == i) {
                cgoto.m3352goto(z2);
                cgoto.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f5421this = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ArrayList<Cgoto> arrayList = this.f5410do;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cgoto cgoto = arrayList.get(i2);
            if (cgoto.f5485if == i) {
                cgoto.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        ArrayList<Cgoto> arrayList = this.f5410do;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            Cgoto cgoto = arrayList.get(i2);
            if (cgoto.f5485if == i) {
                int i3 = cgoto.f5483goto;
                int i4 = (i3 & (-9)) | (z ? 0 : 8);
                cgoto.f5483goto = i4;
                if (i3 != i4) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            mo3345throw(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f5412do = z;
        mo3345throw(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f5410do.size();
    }

    /* renamed from: static, reason: not valid java name */
    public final void m3341static(Bundle bundle) {
        Parcelable mo3322this;
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<Cbreak> next = it.next();
            Cbreak cbreak = next.get();
            if (cbreak == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                int id = cbreak.getId();
                if (id > 0 && (mo3322this = cbreak.mo3322this()) != null) {
                    sparseArray.put(id, mo3322this);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean mo3342super() {
        return this.f5418if;
    }

    /* renamed from: switch, reason: not valid java name */
    public void mo3343switch(Cdo cdo) {
        this.f5407do = cdo;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3344this() {
        ArrayList<Cgoto> m3326class = m3326class();
        if (this.f5420new) {
            CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
            Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<Cbreak> next = it.next();
                Cbreak cbreak = next.get();
                if (cbreak == null) {
                    copyOnWriteArrayList.remove(next);
                } else {
                    z |= cbreak.mo3317case();
                }
            }
            ArrayList<Cgoto> arrayList = this.f5414for;
            ArrayList<Cgoto> arrayList2 = this.f5419new;
            if (z) {
                arrayList.clear();
                arrayList2.clear();
                int size = m3326class.size();
                for (int i = 0; i < size; i++) {
                    Cgoto cgoto = m3326class.get(i);
                    if ((cgoto.f5483goto & 32) == 32) {
                        arrayList.add(cgoto);
                    } else {
                        arrayList2.add(cgoto);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(m3326class());
            }
            this.f5420new = false;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void mo3345throw(boolean z) {
        if (this.f5423try) {
            this.f5401case = true;
            if (z) {
                this.f5413else = true;
                return;
            }
            return;
        }
        if (z) {
            this.f5415for = true;
            this.f5420new = true;
        }
        CopyOnWriteArrayList<WeakReference<Cbreak>> copyOnWriteArrayList = this.f5411do;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        m3331extends();
        Iterator<WeakReference<Cbreak>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference<Cbreak> next = it.next();
            Cbreak cbreak = next.get();
            if (cbreak == null) {
                copyOnWriteArrayList.remove(next);
            } else {
                cbreak.mo3321new(z);
            }
        }
        m3328default();
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m3346throws(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        if (view != null) {
            this.f5406do = view;
            this.f5409do = null;
            this.f5405do = null;
        } else {
            if (i > 0) {
                this.f5409do = this.f5404do.getText(i);
            } else if (charSequence != null) {
                this.f5409do = charSequence;
            }
            if (i2 > 0) {
                this.f5405do = C0466Ra.getDrawable(this.f5403do, i2);
            } else if (drawable != null) {
                this.f5405do = drawable;
            }
            this.f5406do = null;
        }
        mo3345throw(false);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean mo3347try(Ccase ccase, MenuItem menuItem) {
        Cdo cdo = this.f5407do;
        return cdo != null && cdo.mo2230if(ccase, menuItem);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3348while(android.view.MenuItem r7, androidx.appcompat.view.menu.Cbreak r8, int r9) {
        /*
            r6 = this;
            androidx.appcompat.view.menu.goto r7 = (androidx.appcompat.view.menu.Cgoto) r7
            r0 = 0
            if (r7 == 0) goto Lc5
            boolean r1 = r7.isEnabled()
            if (r1 != 0) goto Ld
            goto Lc5
        Ld:
            android.view.MenuItem$OnMenuItemClickListener r1 = r7.f5473do
            r2 = 1
            if (r1 == 0) goto L19
            boolean r1 = r1.onMenuItemClick(r7)
            if (r1 == 0) goto L19
            goto L37
        L19:
            androidx.appcompat.view.menu.case r1 = r7.f5475do
            boolean r3 = r1.mo3347try(r1, r7)
            if (r3 == 0) goto L22
            goto L37
        L22:
            android.content.Intent r3 = r7.f5468do
            if (r3 == 0) goto L2d
            android.content.Context r1 = r1.f5403do     // Catch: android.content.ActivityNotFoundException -> L2c
            r1.startActivity(r3)     // Catch: android.content.ActivityNotFoundException -> L2c
            goto L37
        L2c:
        L2d:
            H r1 = r7.f5467do
            if (r1 == 0) goto L39
            boolean r1 = r1.onPerformDefaultAction()
            if (r1 == 0) goto L39
        L37:
            r1 = 1
            goto L3a
        L39:
            r1 = 0
        L3a:
            H r3 = r7.f5467do
            if (r3 == 0) goto L46
            boolean r4 = r3.hasSubMenu()
            if (r4 == 0) goto L46
            r4 = 1
            goto L47
        L46:
            r4 = 0
        L47:
            boolean r5 = r7.m3351else()
            if (r5 == 0) goto L59
            boolean r7 = r7.expandActionView()
            r1 = r1 | r7
            if (r1 == 0) goto Lc4
            r6.m3333for(r2)
            goto Lc4
        L59:
            boolean r5 = r7.hasSubMenu()
            if (r5 != 0) goto L6a
            if (r4 == 0) goto L62
            goto L6a
        L62:
            r7 = r9 & 1
            if (r7 != 0) goto Lc4
            r6.m3333for(r2)
            goto Lc4
        L6a:
            r9 = r9 & 4
            if (r9 != 0) goto L71
            r6.m3333for(r0)
        L71:
            boolean r9 = r7.hasSubMenu()
            if (r9 != 0) goto L85
            androidx.appcompat.view.menu.const r9 = new androidx.appcompat.view.menu.const
            android.content.Context r5 = r6.f5403do
            r9.<init>(r5, r6, r7)
            r7.f5476do = r9
            java.lang.CharSequence r5 = r7.f5477do
            r9.setHeaderTitle(r5)
        L85:
            androidx.appcompat.view.menu.const r7 = r7.f5476do
            if (r4 == 0) goto L8c
            r3.onPrepareSubMenu(r7)
        L8c:
            java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<androidx.appcompat.view.menu.break>> r9 = r6.f5411do
            boolean r3 = r9.isEmpty()
            if (r3 == 0) goto L95
            goto Lbe
        L95:
            if (r8 == 0) goto L9b
            boolean r0 = r8.mo3320goto(r7)
        L9b:
            java.util.Iterator r8 = r9.iterator()
        L9f:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto Lbe
            java.lang.Object r3 = r8.next()
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r4 = r3.get()
            androidx.appcompat.view.menu.break r4 = (androidx.appcompat.view.menu.Cbreak) r4
            if (r4 != 0) goto Lb7
            r9.remove(r3)
            goto L9f
        Lb7:
            if (r0 != 0) goto L9f
            boolean r0 = r4.mo3320goto(r7)
            goto L9f
        Lbe:
            r1 = r1 | r0
            if (r1 != 0) goto Lc4
            r6.m3333for(r2)
        Lc4:
            return r1
        Lc5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.Ccase.m3348while(android.view.MenuItem, androidx.appcompat.view.menu.break, int):boolean");
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return mo3329do(0, 0, 0, this.f5404do.getString(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f5404do.getString(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return mo3329do(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        Cgoto mo3329do = mo3329do(i, i2, i3, charSequence);
        Cconst cconst = new Cconst(this.f5403do, this, mo3329do);
        mo3329do.f5476do = cconst;
        cconst.setHeaderTitle(mo3329do.f5477do);
        return cconst;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return mo3329do(i, i2, i3, this.f5404do.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f5404do.getString(i4));
    }
}
