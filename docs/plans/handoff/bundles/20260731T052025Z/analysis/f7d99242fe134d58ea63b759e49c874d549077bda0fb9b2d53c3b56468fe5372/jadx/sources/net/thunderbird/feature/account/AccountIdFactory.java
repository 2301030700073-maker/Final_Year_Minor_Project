package net.thunderbird.feature.account;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.uuid.Uuid;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountIdFactory {
    public static final AccountIdFactory INSTANCE = new AccountIdFactory();
    public final AnonymousClass1 fromUuid = AnonymousClass1.INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.account.AccountIdFactory$1, reason: invalid class name */
    public final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1(1, AccountId.class, "<init>", "<init>(Lkotlin/uuid/Uuid;)V", 0);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Uuid uuid = (Uuid) obj;
            uuid.getClass();
            return new AccountId(uuid);
        }
    }

    public final AccountId of(String str) {
        str.getClass();
        return (AccountId) this.fromUuid.invoke(NodeUtils.m1081parse(str));
    }
}
