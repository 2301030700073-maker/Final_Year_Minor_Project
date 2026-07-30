package android.support.v4.media.session;

import android.os.IBinder;
import android.support.v4.media.session.Cdo;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;
import defpackage.C0111As;
import defpackage.InterfaceC4121zs;
import java.lang.ref.WeakReference;

/* renamed from: android.support.v4.media.session.for, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfor implements IBinder.DeathRecipient {

    /* renamed from: do, reason: not valid java name */
    public MediaControllerCompat$MediaControllerImplApi21.Cdo f5078do;

    /* renamed from: android.support.v4.media.session.for$do, reason: invalid class name */
    public static class Cdo implements InterfaceC4121zs {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<Cfor> f5079do;

        public Cdo(Cfor cfor) {
            this.f5079do = new WeakReference<>(cfor);
        }
    }

    /* renamed from: android.support.v4.media.session.for$if, reason: invalid class name */
    public static class Cif extends Cdo.AbstractBinderC0022do {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<Cfor> f5080do;

        public Cif(Cfor cfor) {
            this.f5080do = new WeakReference<>(cfor);
        }
    }

    public Cfor() {
        new C0111As(new Cdo(this));
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }
}
