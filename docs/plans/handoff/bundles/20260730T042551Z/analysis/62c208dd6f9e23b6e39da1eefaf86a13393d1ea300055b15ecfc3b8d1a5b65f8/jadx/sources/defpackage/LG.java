package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class LG {
    /* renamed from: case, reason: not valid java name */
    public static XV m1313case(List list) {
        if (list == null || list.isEmpty()) {
            return m1320try(null);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((FG) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        XV xv = new XV();
        XO xo = new XO(list.size(), xv);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            FG fg = (FG) it2.next();
            OV ov = JG.f1620do;
            fg.mo590case(ov, xo);
            fg.mo605try(ov, xo);
            fg.mo594do(ov, xo);
        }
        return xv;
    }

    /* renamed from: do, reason: not valid java name */
    public static <TResult> TResult m1314do(FG<TResult> fg) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(fg, "Task must not be null");
        if (fg.mo602super()) {
            return (TResult) m1317goto(fg);
        }
        C0806cM c0806cM = new C0806cM(0);
        OV ov = JG.f1620do;
        fg.mo590case(ov, c0806cM);
        fg.mo605try(ov, c0806cM);
        fg.mo594do(ov, c0806cM);
        ((CountDownLatch) c0806cM.f8526do).await();
        return (TResult) m1317goto(fg);
    }

    /* renamed from: else, reason: not valid java name */
    public static FG<List<FG<?>>> m1315else(FG<?>... fgArr) {
        if (fgArr.length == 0) {
            return m1320try(Collections.emptyList());
        }
        List asList = Arrays.asList(fgArr);
        return (asList == null || asList.isEmpty()) ? m1320try(Collections.emptyList()) : m1313case(asList).mo589break(JG.f1621do, new C2776ft(asList));
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public static XV m1316for(Callable callable, Executor executor) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        XV xv = new XV();
        executor.execute(new RunnableC2695eT(xv, callable));
        return xv;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Object m1317goto(FG fg) {
        if (fg.mo604throw()) {
            return fg.mo592class();
        }
        if (fg.mo596final()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(fg.mo591catch());
    }

    /* renamed from: if, reason: not valid java name */
    public static <TResult> TResult m1318if(FG<TResult> fg, long j, TimeUnit timeUnit) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(fg, "Task must not be null");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (fg.mo602super()) {
            return (TResult) m1317goto(fg);
        }
        C0806cM c0806cM = new C0806cM(0);
        OV ov = JG.f1620do;
        fg.mo590case(ov, c0806cM);
        fg.mo605try(ov, c0806cM);
        fg.mo594do(ov, c0806cM);
        if (((CountDownLatch) c0806cM.f8526do).await(j, timeUnit)) {
            return (TResult) m1317goto(fg);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: new, reason: not valid java name */
    public static XV m1319new(Exception exc) {
        XV xv = new XV();
        xv.m2835native(exc);
        return xv;
    }

    /* renamed from: try, reason: not valid java name */
    public static XV m1320try(Object obj) {
        XV xv = new XV();
        xv.m2836public(obj);
        return xv;
    }
}
