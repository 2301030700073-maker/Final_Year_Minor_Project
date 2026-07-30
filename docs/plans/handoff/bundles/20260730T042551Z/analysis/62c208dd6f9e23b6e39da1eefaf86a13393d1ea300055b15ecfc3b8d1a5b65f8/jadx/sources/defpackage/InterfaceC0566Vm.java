package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: Vm, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC0566Vm extends IInterface {

    /* renamed from: case, reason: not valid java name */
    public static final String f4188case = "android$support$customtabs$trusted$ITrustedWebActivityService".replace('$', '.');

    /* renamed from: Vm$do, reason: invalid class name */
    public static abstract class Cdo extends Binder implements InterfaceC0566Vm {
        public Cdo() {
            attachInterface(this, InterfaceC0566Vm.f4188case);
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00b3, code lost:
        
            r8 = r9.f6023do.getNotificationChannel(androidx.browser.trusted.TrustedWebActivityService.m3557do(r8));
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c3, code lost:
        
            if (r8 != 0) goto L34;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x01a5, code lost:
        
            if (r8 != false) goto L62;
         */
        @Override // android.os.Binder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onTransact(int r8, android.os.Parcel r9, android.os.Parcel r10, int r11) {
            /*
                Method dump skipped, instructions count: 466
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.InterfaceC0566Vm.Cdo.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    /* renamed from: Vm$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static Object m2664do(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2665if(Parcel parcel, Bundle bundle) {
            if (bundle == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                bundle.writeToParcel(parcel, 1);
            }
        }
    }
}
