package defpackage;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;

@KeepForSdk
/* renamed from: pz, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3539pz<T> {
    private final String zza;
    private Object zzb;

    @KeepForSdk
    /* renamed from: pz$do, reason: invalid class name */
    public static class Cdo extends Exception {
        @KeepForSdk
        public Cdo() {
            super("Could not get remote context.");
        }

        @KeepForSdk
        public Cdo(String str, Exception exc) {
            super(str, exc);
        }
    }

    @KeepForSdk
    public AbstractC3539pz(String str) {
        this.zza = str;
    }

    @KeepForSdk
    public abstract T getRemoteCreator(IBinder iBinder);

    @KeepForSdk
    public final T getRemoteCreatorInstance(Context context) {
        if (this.zzb == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext == null) {
                throw new Cdo();
            }
            try {
                this.zzb = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zza).newInstance());
            } catch (ClassNotFoundException e) {
                throw new Cdo("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new Cdo("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new Cdo("Could not instantiate creator.", e3);
            }
        }
        return (T) this.zzb;
    }
}
