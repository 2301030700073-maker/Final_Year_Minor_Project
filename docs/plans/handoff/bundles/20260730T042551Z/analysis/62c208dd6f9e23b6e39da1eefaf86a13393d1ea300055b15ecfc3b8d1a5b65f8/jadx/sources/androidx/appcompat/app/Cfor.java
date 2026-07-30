package androidx.appcompat.app;

import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppLocalesMetadataHolderService;
import androidx.appcompat.app.Cnew;
import androidx.appcompat.widget.Toolbar;
import defpackage.C0131Bq;
import defpackage.I2;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* renamed from: androidx.appcompat.app.for, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfor {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew.Cdo f5341do = new Cnew.Cdo(new Cnew.Cif());

    /* renamed from: for, reason: not valid java name */
    public static final int f5345for = -100;

    /* renamed from: do, reason: not valid java name */
    public static C0131Bq f5339do = null;

    /* renamed from: if, reason: not valid java name */
    public static C0131Bq f5346if = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Boolean f5342do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f5344do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final I2<WeakReference<Cfor>> f5340do = new I2<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f5343do = new Object();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final Object f5347if = new Object();

    /* renamed from: androidx.appcompat.app.for$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static LocaleList m3295do(String str) {
            LocaleList forLanguageTags;
            forLanguageTags = LocaleList.forLanguageTags(str);
            return forLanguageTags;
        }
    }

    /* renamed from: androidx.appcompat.app.for$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static LocaleList m3296do(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3297if(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m3293class(Context context) {
        if (f5342do == null) {
            try {
                int i = AppLocalesMetadataHolderService.f5301for;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), Build.VERSION.SDK_INT >= 24 ? AppLocalesMetadataHolderService.Cdo.m3288do() | 128 : 640).metaData;
                if (bundle != null) {
                    f5342do = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f5342do = Boolean.FALSE;
            }
        }
        return f5342do.booleanValue();
    }

    /* renamed from: native, reason: not valid java name */
    public static void m3294native(Cfor cfor) {
        synchronized (f5343do) {
            Iterator<WeakReference<Cfor>> it = f5340do.iterator();
            while (it.hasNext()) {
                Cfor cfor2 = it.next().get();
                if (cfor2 == cfor || cfor2 == null) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: break */
    public abstract void mo3237break();

    /* renamed from: case */
    public Context mo3238case() {
        return null;
    }

    /* renamed from: catch */
    public abstract void mo3239catch();

    /* renamed from: const */
    public abstract void mo3240const(Configuration configuration);

    /* renamed from: default */
    public void mo3242default(int i) {
    }

    /* renamed from: else */
    public int mo3243else() {
        return -100;
    }

    /* renamed from: extends */
    public abstract void mo3244extends(CharSequence charSequence);

    /* renamed from: final */
    public abstract void mo3245final();

    /* renamed from: for */
    public abstract void mo3247for(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: goto */
    public abstract MenuInflater mo3248goto();

    /* renamed from: import */
    public abstract void mo3250import();

    /* renamed from: new */
    public Context mo3253new(Context context) {
        return context;
    }

    /* renamed from: public */
    public abstract boolean mo3256public(int i);

    /* renamed from: return */
    public abstract void mo3257return(int i);

    /* renamed from: static */
    public abstract void mo3258static(View view);

    /* renamed from: super */
    public abstract void mo3260super();

    /* renamed from: switch */
    public abstract void mo3261switch(View view, ViewGroup.LayoutParams layoutParams);

    /* renamed from: this */
    public abstract ActionBar mo3262this();

    /* renamed from: throw */
    public abstract void mo3263throw();

    /* renamed from: throws */
    public abstract void mo3264throws(Toolbar toolbar);

    /* renamed from: try */
    public abstract <T extends View> T mo3266try(int i);

    /* renamed from: while */
    public abstract void mo3267while();
}
