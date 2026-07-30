package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.profileinstaller.Cfor;
import androidx.profileinstaller.Cif;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import defpackage.C3223ke;
import defpackage.Tx;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* renamed from: androidx.profileinstaller.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public final Cfor.InterfaceC0040for f7220do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f7221do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f7222do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f7223do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7224do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f7225do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3223ke[] f7226do;

    /* renamed from: if, reason: not valid java name */
    public byte[] f7227if;

    public Cif(AssetManager assetManager, Executor executor, Cfor.InterfaceC0040for interfaceC0040for, String str, File file) {
        byte[] bArr;
        this.f7223do = executor;
        this.f7220do = interfaceC0040for;
        this.f7222do = str;
        this.f7221do = file;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24 && i <= 33) {
            switch (i) {
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    bArr = Tx.f3765try;
                    break;
                case 26:
                    bArr = Tx.f3764new;
                    break;
                case 27:
                    bArr = Tx.f3762for;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = Tx.f3763if;
                    break;
                case 31:
                case 32:
                case 33:
                    bArr = Tx.f3760do;
                    break;
            }
            this.f7225do = bArr;
        }
        bArr = null;
        this.f7225do = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public final FileInputStream m4296do(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f7220do.mo4289do();
            }
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4297if(final int i, final Serializable serializable) {
        this.f7223do.execute(new Runnable() { // from class: ie
            @Override // java.lang.Runnable
            public final void run() {
                Cif.this.f7220do.mo4290if(i, serializable);
            }
        });
    }
}
