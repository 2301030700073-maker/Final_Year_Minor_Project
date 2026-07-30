package b.b.f;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import b.b.f.m.F;

/* loaded from: classes.dex */
public class g extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f340a;

    /* renamed from: b, reason: collision with root package name */
    public final b f341b;

    public g(Context context, b bVar) {
        this.f340a = context;
        this.f341b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f341b.c();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f341b.d();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new F(this.f340a, (b.e.e.a.a) this.f341b.e());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f341b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f341b.g();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f341b.f328a;
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f341b.h();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f341b.f329b;
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f341b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f341b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f341b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f341b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f341b.f328a = obj;
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f341b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f341b.p(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f341b.l(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f341b.n(i);
    }
}
