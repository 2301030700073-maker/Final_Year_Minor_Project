package defpackage;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;

/* renamed from: Un, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0545Un {

    /* renamed from: do, reason: not valid java name */
    public final Cfor f3973do;

    /* renamed from: Un$for, reason: invalid class name */
    public interface Cfor {
        /* renamed from: do */
        void mo2466do();

        /* renamed from: for */
        Object mo2467for();

        /* renamed from: if */
        Uri mo2468if();

        /* renamed from: new */
        ClipDescription mo2469new();

        /* renamed from: try */
        Uri mo2470try();
    }

    /* renamed from: Un$if, reason: invalid class name */
    public static final class Cif implements Cfor {

        /* renamed from: do, reason: not valid java name */
        public final ClipDescription f3975do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Uri f3976do;

        /* renamed from: if, reason: not valid java name */
        public final Uri f3977if;

        public Cif(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f3976do = uri;
            this.f3975do = clipDescription;
            this.f3977if = uri2;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: do */
        public final void mo2466do() {
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: for */
        public final Object mo2467for() {
            return null;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: if */
        public final Uri mo2468if() {
            return this.f3976do;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: new */
        public final ClipDescription mo2469new() {
            return this.f3975do;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: try */
        public final Uri mo2470try() {
            return this.f3977if;
        }
    }

    public C0545Un(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f3973do = new Cdo(uri, clipDescription, uri2);
        } else {
            this.f3973do = new Cif(uri, clipDescription, uri2);
        }
    }

    /* renamed from: Un$do, reason: invalid class name */
    public static final class Cdo implements Cfor {

        /* renamed from: do, reason: not valid java name */
        public final InputContentInfo f3974do;

        public Cdo(Object obj) {
            this.f3974do = (InputContentInfo) obj;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: do, reason: not valid java name */
        public final void mo2466do() {
            this.f3974do.requestPermission();
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: for, reason: not valid java name */
        public final Object mo2467for() {
            return this.f3974do;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: if, reason: not valid java name */
        public final Uri mo2468if() {
            Uri contentUri;
            contentUri = this.f3974do.getContentUri();
            return contentUri;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: new, reason: not valid java name */
        public final ClipDescription mo2469new() {
            ClipDescription description;
            description = this.f3974do.getDescription();
            return description;
        }

        @Override // defpackage.C0545Un.Cfor
        /* renamed from: try, reason: not valid java name */
        public final Uri mo2470try() {
            Uri linkUri;
            linkUri = this.f3974do.getLinkUri();
            return linkUri;
        }

        public Cdo(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f3974do = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    public C0545Un(Cdo cdo) {
        this.f3973do = cdo;
    }
}
