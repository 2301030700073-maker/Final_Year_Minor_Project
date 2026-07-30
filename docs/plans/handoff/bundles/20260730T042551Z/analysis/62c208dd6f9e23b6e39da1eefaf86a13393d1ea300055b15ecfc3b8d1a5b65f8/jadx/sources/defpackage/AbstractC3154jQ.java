package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzcn;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbeu;

/* renamed from: jQ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public static final zzcp f13712do;

    static {
        zzcp zzcpVar = null;
        try {
            Object newInstance = zzba.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (newInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzcpVar = queryLocalInterface instanceof zzcp ? (zzcp) queryLocalInterface : new zzcn(iBinder);
                }
            } else {
                zzo.zzj("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            zzo.zzj("Failed to instantiate ClientApi class.");
        }
        f13712do = zzcpVar;
    }

    /* renamed from: do */
    public abstract Object mo614do();

    /* renamed from: for */
    public abstract Object mo615for();

    /* renamed from: if */
    public abstract Object mo616if(zzcp zzcpVar);

    /* renamed from: new, reason: not valid java name */
    public final Object m7098new(Context context, boolean z) {
        boolean z2;
        Object obj;
        Object obj2;
        if (!z) {
            zzbc.zzb();
            if (!zzf.zzs(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzo.zze("Google Play Services is not available.");
                z = true;
            }
        }
        boolean z3 = false;
        boolean z4 = !(DynamiteModule.m5604do(context, ModuleDescriptor.MODULE_ID) <= DynamiteModule.m5608new(context, ModuleDescriptor.MODULE_ID, false));
        zzbcl.zza(context);
        if (((Boolean) zzbeg.zza.zze()).booleanValue()) {
            z2 = false;
        } else if (((Boolean) zzbeg.zzb.zze()).booleanValue()) {
            z2 = true;
            z3 = true;
        } else {
            z2 = z | z4;
        }
        zzcp zzcpVar = f13712do;
        Object obj3 = null;
        if (z2) {
            if (zzcpVar != null) {
                try {
                    obj2 = mo616if(zzcpVar);
                } catch (RemoteException e) {
                    zzo.zzk("Cannot invoke local loader using ClientApi class.", e);
                }
                if (obj2 == null && !z3) {
                    try {
                        obj3 = mo615for();
                    } catch (RemoteException e2) {
                        zzo.zzk("Cannot invoke remote loader.", e2);
                    }
                    obj2 = obj3;
                }
            } else {
                zzo.zzj("ClientApi class cannot be loaded.");
            }
            obj2 = null;
            if (obj2 == null) {
                obj3 = mo615for();
                obj2 = obj3;
            }
        } else {
            try {
                obj = mo615for();
            } catch (RemoteException e3) {
                zzo.zzk("Cannot invoke remote loader.", e3);
                obj = null;
            }
            if (obj == null) {
                if (zzbc.zze().nextInt(((Long) zzbeu.zza.zze()).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzbc.zzb().zzn(context, zzbc.zzc().afmaVersion, "gmob-apps", bundle, true);
                }
            }
            if (obj == null) {
                if (zzcpVar != null) {
                    try {
                        obj3 = mo616if(zzcpVar);
                    } catch (RemoteException e4) {
                        zzo.zzk("Cannot invoke local loader using ClientApi class.", e4);
                    }
                } else {
                    zzo.zzj("ClientApi class cannot be loaded.");
                }
                obj2 = obj3;
            } else {
                obj2 = obj;
            }
        }
        return obj2 == null ? mo614do() : obj2;
    }
}
