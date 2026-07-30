package defpackage;

import android.content.Context;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;

/* renamed from: ad, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0701ad {
    /* renamed from: do, reason: not valid java name */
    public static void m3137do() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        stackTraceElement.getFileName();
        stackTraceElement.getLineNumber();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m3138for(View view) {
        try {
            view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m3139if(Context context, int i) {
        if (i == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i);
        } catch (Exception unused) {
            return V1.m2494case("?", i);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m3140new(MotionLayout motionLayout, int i) {
        return i == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i);
    }
}
