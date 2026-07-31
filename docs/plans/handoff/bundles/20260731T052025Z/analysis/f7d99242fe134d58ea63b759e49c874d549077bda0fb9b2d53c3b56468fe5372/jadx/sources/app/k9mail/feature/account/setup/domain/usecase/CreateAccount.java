package app.k9mail.feature.account.setup.domain.usecase;

import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import net.thunderbird.app.common.account.AccountCreator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateAccount {
    public final AccountCreator accountCreator;
    public final Function0 uuidGenerator;

    public CreateAccount(AccountCreator accountCreator) {
        UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(12);
        this.accountCreator = accountCreator;
        this.uuidGenerator = utilsKt$$ExternalSyntheticLambda0;
    }
}
