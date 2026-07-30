package androidx.compose.ui;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;

/* compiled from: SessionMutex.kt */
/* loaded from: classes.dex */
public abstract class SessionMutex {
    /* renamed from: constructor-impl, reason: not valid java name */
    private static AtomicReference m1076constructorimpl(AtomicReference atomicReference) {
        return atomicReference;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static AtomicReference m1075constructorimpl() {
        return m1076constructorimpl(new AtomicReference(null));
    }

    /* renamed from: getCurrentSession-impl, reason: not valid java name */
    public static final Object m1077getCurrentSessionimpl(AtomicReference atomicReference) {
        Session session = (Session) atomicReference.get();
        if (session != null) {
            return session.getValue();
        }
        return null;
    }

    /* renamed from: withSessionCancellingPrevious-impl, reason: not valid java name */
    public static final Object m1078withSessionCancellingPreviousimpl(AtomicReference atomicReference, Function1 function1, Function2 function2, Continuation continuation) {
        return CoroutineScopeKt.coroutineScope(new SessionMutex$withSessionCancellingPrevious$2(function1, atomicReference, function2, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SessionMutex.kt */
    static final class Session {
        private final Job job;
        private final Object value;

        public Session(Job job, Object obj) {
            this.job = job;
            this.value = obj;
        }

        public final Job getJob() {
            return this.job;
        }

        public final Object getValue() {
            return this.value;
        }
    }
}
