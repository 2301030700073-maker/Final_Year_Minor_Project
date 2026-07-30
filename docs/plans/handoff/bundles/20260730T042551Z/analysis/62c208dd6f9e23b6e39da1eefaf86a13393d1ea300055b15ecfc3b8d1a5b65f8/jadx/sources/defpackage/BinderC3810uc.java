package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import defpackage.InterfaceC0303Jm;

/* renamed from: uc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class BinderC3810uc extends InterfaceC0303Jm.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final Handler f15901do = new Handler(Looper.getMainLooper());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3692sc f15902do;

    /* renamed from: uc$break, reason: invalid class name */
    public class Cbreak implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15903do;

        public Cbreak(Bundle bundle) {
            this.f15903do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onMinimized(this.f15903do);
        }
    }

    /* renamed from: uc$case, reason: invalid class name */
    public class Ccase implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Uri f15905do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Bundle f15906do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ boolean f15908do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f15909for;

        public Ccase(int i, Uri uri, boolean z, Bundle bundle) {
            this.f15909for = i;
            this.f15905do = uri;
            this.f15908do = z;
            this.f15906do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onRelationshipValidationResult(this.f15909for, this.f15905do, this.f15908do, this.f15906do);
        }
    }

    /* renamed from: uc$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15910do;

        public Cdo(Bundle bundle) {
            this.f15910do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onUnminimized(this.f15910do);
        }
    }

    /* renamed from: uc$else, reason: invalid class name */
    public class Celse implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15912do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f15914for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f15915new;

        public Celse(int i, int i2, Bundle bundle) {
            this.f15914for = i;
            this.f15915new = i2;
            this.f15912do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onActivityResized(this.f15914for, this.f15915new, this.f15912do);
        }
    }

    /* renamed from: uc$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f15916break;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15917do;

        public Cfor(String str, Bundle bundle) {
            this.f15916break = str;
            this.f15917do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.extraCallback(this.f15916break, this.f15917do);
        }
    }

    /* renamed from: uc$goto, reason: invalid class name */
    public class Cgoto implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15919do;

        public Cgoto(Bundle bundle) {
            this.f15919do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onWarmupCompleted(this.f15919do);
        }
    }

    /* renamed from: uc$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15921do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f15923for;

        public Cif(int i, Bundle bundle) {
            this.f15923for = i;
            this.f15921do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onNavigationEvent(this.f15923for, this.f15921do);
        }
    }

    /* renamed from: uc$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15924do;

        public Cnew(Bundle bundle) {
            this.f15924do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onMessageChannelReady(this.f15924do);
        }
    }

    /* renamed from: uc$this, reason: invalid class name */
    public class Cthis implements Runnable {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ int f15926case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15927do;

        /* renamed from: else, reason: not valid java name */
        public final /* synthetic */ int f15929else;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f15930for;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ int f15931new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ int f15932try;

        public Cthis(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
            this.f15930for = i;
            this.f15931new = i2;
            this.f15932try = i3;
            this.f15926case = i4;
            this.f15929else = i5;
            this.f15927do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onActivityLayout(this.f15930for, this.f15931new, this.f15932try, this.f15926case, this.f15929else, this.f15927do);
        }
    }

    /* renamed from: uc$try, reason: invalid class name */
    public class Ctry implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f15933break;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Bundle f15934do;

        public Ctry(String str, Bundle bundle) {
            this.f15933break = str;
            this.f15934do = bundle;
        }

        @Override // java.lang.Runnable
        public final void run() {
            BinderC3810uc.this.f15902do.onPostMessage(this.f15933break, this.f15934do);
        }
    }

    public BinderC3810uc(C3692sc c3692sc) {
        this.f15902do = c3692sc;
    }

    @Override // defpackage.InterfaceC0303Jm
    public final void a(String str, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Ctry(str, bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    public final void b(int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cthis(i, i2, i3, i4, i5, bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: break */
    public final void mo1059break(int i, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cif(i, bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: else */
    public final Bundle mo1060else(String str, Bundle bundle) {
        C3692sc c3692sc = this.f15902do;
        if (c3692sc == null) {
            return null;
        }
        return c3692sc.extraCallbackWithResult(str, bundle);
    }

    @Override // defpackage.InterfaceC0303Jm
    public final void f(Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cbreak(bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: implements */
    public final void mo1061implements(int i, int i2, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Celse(i, i2, bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: import */
    public final void mo1062import(Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cnew(bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    public final void l(String str, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cfor(str, bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: private */
    public final void mo1063private(Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cgoto(bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: return */
    public final void mo1064return(Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Cdo(bundle));
    }

    @Override // defpackage.InterfaceC0303Jm
    /* renamed from: switch */
    public final void mo1065switch(int i, Uri uri, boolean z, Bundle bundle) {
        if (this.f15902do == null) {
            return;
        }
        this.f15901do.post(new Ccase(i, uri, z, bundle));
    }
}
