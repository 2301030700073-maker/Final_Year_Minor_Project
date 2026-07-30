package defpackage;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.Ccase;
import defpackage.G;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class WF extends ActionMode {

    /* renamed from: do, reason: not valid java name */
    public final G f4360do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4361do;

    /* renamed from: WF$do, reason: invalid class name */
    public static class Cdo implements G.Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Context f4362do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ActionMode.Callback f4363do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<WF> f4365do = new ArrayList<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C2680eE<Menu, Menu> f4364do = new C2680eE<>();

        public Cdo(Context context, ActionMode.Callback callback) {
            this.f4362do = context;
            this.f4363do = callback;
        }

        @Override // defpackage.G.Cdo
        /* renamed from: do */
        public final boolean mo675do(G g, MenuItem menuItem) {
            return this.f4363do.onActionItemClicked(m2718try(g), new MenuItemC0265Hs(this.f4362do, (ZF) menuItem));
        }

        @Override // defpackage.G.Cdo
        /* renamed from: for */
        public final boolean mo676for(G g, Ccase ccase) {
            WF m2718try = m2718try(g);
            C2680eE<Menu, Menu> c2680eE = this.f4364do;
            Menu orDefault = c2680eE.getOrDefault(ccase, null);
            if (orDefault == null) {
                orDefault = new MenuC0331Ks(this.f4362do, ccase);
                c2680eE.put(ccase, orDefault);
            }
            return this.f4363do.onPrepareActionMode(m2718try, orDefault);
        }

        @Override // defpackage.G.Cdo
        /* renamed from: if */
        public final void mo677if(G g) {
            this.f4363do.onDestroyActionMode(m2718try(g));
        }

        @Override // defpackage.G.Cdo
        /* renamed from: new */
        public final boolean mo678new(G g, Ccase ccase) {
            WF m2718try = m2718try(g);
            C2680eE<Menu, Menu> c2680eE = this.f4364do;
            Menu orDefault = c2680eE.getOrDefault(ccase, null);
            if (orDefault == null) {
                orDefault = new MenuC0331Ks(this.f4362do, ccase);
                c2680eE.put(ccase, orDefault);
            }
            return this.f4363do.onCreateActionMode(m2718try, orDefault);
        }

        /* renamed from: try, reason: not valid java name */
        public final WF m2718try(G g) {
            ArrayList<WF> arrayList = this.f4365do;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                WF wf = arrayList.get(i);
                if (wf != null && wf.f4360do == g) {
                    return wf;
                }
            }
            WF wf2 = new WF(this.f4362do, g);
            arrayList.add(wf2);
            return wf2;
        }
    }

    public WF(Context context, G g) {
        this.f4361do = context;
        this.f4360do = g;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f4360do.mo668for();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f4360do.mo670new();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC0331Ks(this.f4361do, this.f4360do.mo674try());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f4360do.mo662case();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f4360do.mo666else();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f4360do.f1112do;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f4360do.mo669goto();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f4360do.f1113do;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f4360do.mo672this();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f4360do.mo661break();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f4360do.mo663catch(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f4360do.mo665const(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f4360do.f1112do = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f4360do.mo671super(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f4360do.mo673throw(z);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f4360do.mo664class(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f4360do.mo667final(i);
    }
}
