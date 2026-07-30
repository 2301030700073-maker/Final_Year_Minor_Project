package androidx.core.app;

import android.app.PendingIntent;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import b.p.b;
import b.p.c;
import b.p.d;
import java.util.Objects;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(b bVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        d dVar = remoteActionCompat.f76a;
        if (bVar.h(1)) {
            dVar = bVar.k();
        }
        remoteActionCompat.f76a = (IconCompat) dVar;
        remoteActionCompat.f77b = bVar.g(remoteActionCompat.f77b, 2);
        remoteActionCompat.f78c = bVar.g(remoteActionCompat.f78c, 3);
        remoteActionCompat.f79d = (PendingIntent) bVar.j(remoteActionCompat.f79d, 4);
        remoteActionCompat.e = bVar.f(remoteActionCompat.e, 5);
        remoteActionCompat.f = bVar.f(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, b bVar) {
        Objects.requireNonNull(bVar);
        IconCompat iconCompat = remoteActionCompat.f76a;
        bVar.l(1);
        bVar.o(iconCompat);
        CharSequence charSequence = remoteActionCompat.f77b;
        bVar.l(2);
        c cVar = (c) bVar;
        TextUtils.writeToParcel(charSequence, cVar.e, 0);
        CharSequence charSequence2 = remoteActionCompat.f78c;
        bVar.l(3);
        TextUtils.writeToParcel(charSequence2, cVar.e, 0);
        bVar.n(remoteActionCompat.f79d, 4);
        boolean z = remoteActionCompat.e;
        bVar.l(5);
        cVar.e.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f;
        bVar.l(6);
        cVar.e.writeInt(z2 ? 1 : 0);
    }
}
