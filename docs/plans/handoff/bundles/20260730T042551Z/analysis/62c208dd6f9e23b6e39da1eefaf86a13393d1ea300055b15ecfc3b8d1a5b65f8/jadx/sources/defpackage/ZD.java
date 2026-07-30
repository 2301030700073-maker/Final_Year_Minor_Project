package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.internal.base.zac;
import com.google.android.gms.signin.internal.zai;
import com.google.android.gms.signin.internal.zak;
import org.json.JSONException;

@KeepForSdk
/* loaded from: classes3.dex */
public final class ZD extends GmsClient<C4036yO> implements InterfaceC3859vO {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f4792do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f4793do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ClientSettings f4794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f4795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f4796do;

    public ZD(Context context, Looper looper, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.f4796do = true;
        this.f4794do = clientSettings;
        this.f4793do = bundle;
        this.f4795do = clientSettings.zab();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof C4036yO ? (C4036yO) queryLocalInterface : new C4036yO(iBinder);
    }

    @Override // defpackage.InterfaceC3859vO
    /* renamed from: do, reason: not valid java name */
    public final void mo2982do() {
        try {
            C4036yO c4036yO = (C4036yO) getService();
            int intValue = ((Integer) Preconditions.checkNotNull(this.f4795do)).intValue();
            Parcel zaa = c4036yO.zaa();
            zaa.writeInt(intValue);
            c4036yO.zac(7, zaa);
        } catch (RemoteException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.InterfaceC3859vO
    /* renamed from: for, reason: not valid java name */
    public final void mo2983for(IAccountAccessor iAccountAccessor, boolean z) {
        try {
            C4036yO c4036yO = (C4036yO) getService();
            int intValue = ((Integer) Preconditions.checkNotNull(this.f4795do)).intValue();
            Parcel zaa = c4036yO.zaa();
            zac.zad(zaa, iAccountAccessor);
            zaa.writeInt(intValue);
            zaa.writeInt(z ? 1 : 0);
            c4036yO.zac(9, zaa);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        ClientSettings clientSettings = this.f4794do;
        boolean equals = getContext().getPackageName().equals(clientSettings.getRealClientPackageName());
        Bundle bundle = this.f4793do;
        if (!equals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.getRealClientPackageName());
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // defpackage.InterfaceC3859vO
    /* renamed from: if, reason: not valid java name */
    public final void mo2984if(InterfaceC3918wO interfaceC3918wO) {
        GoogleSignInAccount googleSignInAccount;
        String m7793if;
        Preconditions.checkNotNull(interfaceC3918wO, "Expecting a valid ISignInCallbacks");
        try {
            try {
                Account accountOrDefault = this.f4794do.getAccountOrDefault();
                if ("<<default account>>".equals(accountOrDefault.name)) {
                    C3497pF m7790do = C3497pF.m7790do(getContext());
                    String m7793if2 = m7790do.m7793if("defaultGoogleSignInAccount");
                    if (!TextUtils.isEmpty(m7793if2) && (m7793if = m7790do.m7793if(C3497pF.m7791new("googleSignInAccount", m7793if2))) != null) {
                        try {
                            googleSignInAccount = GoogleSignInAccount.j(m7793if);
                        } catch (JSONException unused) {
                        }
                        zat zatVar = new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.f4795do)).intValue(), googleSignInAccount);
                        C4036yO c4036yO = (C4036yO) getService();
                        zai zaiVar = new zai(1, zatVar);
                        Parcel zaa = c4036yO.zaa();
                        zac.zac(zaa, zaiVar);
                        zac.zad(zaa, interfaceC3918wO);
                        c4036yO.zac(12, zaa);
                    }
                }
                googleSignInAccount = null;
                zat zatVar2 = new zat(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.f4795do)).intValue(), googleSignInAccount);
                C4036yO c4036yO2 = (C4036yO) getService();
                zai zaiVar2 = new zai(1, zatVar2);
                Parcel zaa2 = c4036yO2.zaa();
                zac.zac(zaa2, zaiVar2);
                zac.zad(zaa2, interfaceC3918wO);
                c4036yO2.zac(12, zaa2);
            } catch (RemoteException unused2) {
            }
        } catch (RemoteException unused3) {
            interfaceC3918wO.zab(new zak(1, new ConnectionResult(8, null), null));
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        return this.f4796do;
    }

    @Override // defpackage.InterfaceC3859vO
    public final void zab() {
        connect(new BaseGmsClient.LegacyClientCallbackAdapter());
    }
}
