package defpackage;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: r6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3605r6 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15212do;

    /* renamed from: if, reason: not valid java name */
    public static final String f15211if = J8.m1018this(UUID.randomUUID().toString() + System.currentTimeMillis());

    /* renamed from: do, reason: not valid java name */
    public static final AtomicLong f15210do = new AtomicLong(0);

    public C3605r6() {
        long time = new Date().getTime();
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) (time / 1000));
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        byte[] array = allocate.array();
        byte[] m7935do = m7935do(time % 1000);
        byte[] m7935do2 = m7935do(f15210do.incrementAndGet());
        byte[] m7935do3 = m7935do(Integer.valueOf(Process.myPid()).shortValue());
        String m1011case = J8.m1011case(new byte[]{array[0], array[1], array[2], array[3], m7935do[0], m7935do[1], m7935do2[0], m7935do2[1], m7935do3[0], m7935do3[1]});
        Locale locale = Locale.US;
        this.f15212do = String.format(locale, "%s%s%s%s", m1011case.substring(0, 12), m1011case.substring(12, 16), m1011case.subSequence(16, 20), f15211if.substring(0, 12)).toUpperCase(locale);
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m7935do(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    public final String toString() {
        return this.f15212do;
    }
}
