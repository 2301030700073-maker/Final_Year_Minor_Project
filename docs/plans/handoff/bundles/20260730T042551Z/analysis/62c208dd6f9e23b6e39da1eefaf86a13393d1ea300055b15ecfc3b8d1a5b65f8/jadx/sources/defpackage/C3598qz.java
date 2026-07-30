package defpackage;

import android.app.RemoteInput;
import android.os.Build;

/* renamed from: qz, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3598qz {

    /* renamed from: qz$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static int m7911do(Object obj) {
            int editChoicesBeforeSending;
            editChoicesBeforeSending = ((RemoteInput) obj).getEditChoicesBeforeSending();
            return editChoicesBeforeSending;
        }

        /* renamed from: if, reason: not valid java name */
        public static RemoteInput.Builder m7912if(RemoteInput.Builder builder, int i) {
            RemoteInput.Builder editChoicesBeforeSending;
            editChoicesBeforeSending = builder.setEditChoicesBeforeSending(i);
            return editChoicesBeforeSending;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static RemoteInput m7910do(C3598qz c3598qz) {
        c3598qz.getClass();
        RemoteInput.Builder addExtras = new RemoteInput.Builder(null).setLabel(null).setChoices(null).setAllowFreeFormInput(false).addExtras(null);
        if (Build.VERSION.SDK_INT >= 29) {
            Cdo.m7912if(addExtras, 0);
        }
        return addExtras.build();
    }
}
