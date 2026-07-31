package com.fsck.k9.activity.setup;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.EmailAddressValidator;
import com.fsck.k9.R;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$Effect;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$Event;
import kotlin.Pair;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSetupCompositionViewModel extends BaseViewModel {
    public LegacyAccount account;
    public final EmailAddressValidator emailAddressValidator;
    public final DefaultLegacyAccountManager legacyAccountManager;
    public final StringsResourceManager resources;
    public final AbstractPersistentList signatureLocations;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountSetupCompositionViewModel(DefaultLegacyAccountManager defaultLegacyAccountManager, StringsResourceManager stringsResourceManager, EmailAddressValidator emailAddressValidator, String str) {
        super(new AccountSetupCompositionContract$State("", "", "", false, "", SmallPersistentVector.EMPTY, new Pair(0, "")));
        str.getClass();
        this.legacyAccountManager = defaultLegacyAccountManager;
        this.resources = stringsResourceManager;
        this.emailAddressValidator = emailAddressValidator;
        AndroidResourceManager androidResourceManager = (AndroidResourceManager) stringsResourceManager;
        this.signatureLocations = Okio.persistentListOf(new Pair(1, androidResourceManager.stringResource(R.string.account_settings_signature__location_before_quoted_text)), new Pair(2, androidResourceManager.stringResource(R.string.account_settings_signature__location_after_quoted_text)));
        LegacyAccount account = defaultLegacyAccountManager.getAccount(str);
        if (account == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Couldn't find account");
            throw null;
        }
        this.account = account;
        updateState(new AbstractMap$$ExternalSyntheticLambda0(4, this));
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        final AccountSetupCompositionContract$Event accountSetupCompositionContract$Event = (AccountSetupCompositionContract$Event) obj;
        accountSetupCompositionContract$Event.getClass();
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.SenderNameChange) {
            final int i = 0;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i2 = i;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i2) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.SenderEmailChange) {
            final int i2 = 1;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i22 = i2;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i22) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.BccEmailChange) {
            final int i3 = 2;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i22 = i3;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i22) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.UseSignatureChange) {
            final int i4 = 3;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i22 = i4;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i22) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.SignatureLocationChange) {
            final int i5 = 4;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i22 = i5;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i22) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.SignatureChange) {
            final int i6 = 5;
            updateState(new Function1(this) { // from class: com.fsck.k9.activity.setup.AccountSetupCompositionViewModel$$ExternalSyntheticLambda1
                public final /* synthetic */ AccountSetupCompositionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    int i22 = i6;
                    AccountSetupCompositionContract$Event accountSetupCompositionContract$Event2 = accountSetupCompositionContract$Event;
                    AccountSetupCompositionViewModel accountSetupCompositionViewModel = this.f$0;
                    switch (i22) {
                        case 0:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State.getClass();
                            LegacyAccount copy$default = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, ((AccountSetupCompositionContract$Event.SenderNameChange) accountSetupCompositionContract$Event2).name, false, null, -1, -1, 8126463);
                            accountSetupCompositionViewModel.account = copy$default;
                            String str = copy$default.senderName;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State, str == null ? "" : str, null, null, false, null, null, 126);
                        case 1:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State2 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State2.getClass();
                            AccountSetupCompositionContract$Event.SenderEmailChange senderEmailChange = (AccountSetupCompositionContract$Event.SenderEmailChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, senderEmailChange.email, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -9, -1, 8388607);
                            EmailAddressValidator emailAddressValidator = accountSetupCompositionViewModel.emailAddressValidator;
                            String str2 = senderEmailChange.email;
                            emailAddressValidator.getClass();
                            if (EmailAddressValidator.isValidAddressOnly(str2)) {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(true));
                            } else {
                                accountSetupCompositionViewModel.emitEffect(new AccountSetupCompositionContract$Effect.ToggleSaveButtonEnabled(false));
                            }
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State2, null, accountSetupCompositionViewModel.account.email, null, false, null, null, 125);
                        case 2:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State3 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State3.getClass();
                            LegacyAccount legacyAccount = accountSetupCompositionViewModel.account;
                            String str3 = ((AccountSetupCompositionContract$Event.BccEmailChange) accountSetupCompositionContract$Event2).bccEmail;
                            if (StringsKt.isBlank(str3)) {
                                str3 = null;
                            }
                            LegacyAccount copy$default2 = LegacyAccount.copy$default(legacyAccount, null, null, null, null, str3, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -513, -1, 8388607);
                            accountSetupCompositionViewModel.account = copy$default2;
                            String str4 = copy$default2.alwaysBcc;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State3, null, null, str4 != null ? str4 : "", false, null, null, 123);
                        case 3:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State4 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State4.getClass();
                            LegacyAccount copy$default3 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, ((AccountSetupCompositionContract$Event.UseSignatureChange) accountSetupCompositionContract$Event2).useSignature, null, -1, -1, 7864319);
                            accountSetupCompositionViewModel.account = copy$default3;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State4, null, null, null, copy$default3.signatureUse, null, null, 119);
                        case 4:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State5 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State5.getClass();
                            AccountSetupCompositionContract$Event.SignatureLocationChange signatureLocationChange = (AccountSetupCompositionContract$Event.SignatureLocationChange) accountSetupCompositionContract$Event2;
                            accountSetupCompositionViewModel.account = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ((Number) signatureLocationChange.signatureLocation.first).intValue() == 1, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -4097, 8388607);
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State5, null, null, null, false, null, signatureLocationChange.signatureLocation, 63);
                        default:
                            AccountSetupCompositionContract$State accountSetupCompositionContract$State6 = (AccountSetupCompositionContract$State) obj2;
                            accountSetupCompositionContract$State6.getClass();
                            LegacyAccount copy$default4 = LegacyAccount.copy$default(accountSetupCompositionViewModel.account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, ((AccountSetupCompositionContract$Event.SignatureChange) accountSetupCompositionContract$Event2).signature, -1, -1, 7340031);
                            accountSetupCompositionViewModel.account = copy$default4;
                            String str5 = copy$default4.signature;
                            return AccountSetupCompositionContract$State.copy$default(accountSetupCompositionContract$State6, null, null, null, false, str5 == null ? "" : str5, null, 111);
                    }
                }
            });
            return;
        }
        if (!(accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.SavePressed)) {
            if (accountSetupCompositionContract$Event instanceof AccountSetupCompositionContract$Event.BackPressed) {
                emitEffect(AccountSetupCompositionContract$Effect.Back.INSTANCE);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        LegacyAccount legacyAccount = this.account;
        DefaultLegacyAccountManager defaultLegacyAccountManager = this.legacyAccountManager;
        defaultLegacyAccountManager.getClass();
        defaultLegacyAccountManager.saveAccount(legacyAccount);
        emitEffect(AccountSetupCompositionContract$Effect.DoneUpdatingAccount.INSTANCE);
    }
}
