package androidx.room;

import androidx.collection.internal.Lock;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TransactionElement implements CoroutineContext.Element {
    public static final Lock Key = new Lock();
}
