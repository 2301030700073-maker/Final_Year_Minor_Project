package com.fsck.k9.activity.compose;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.Toast;
import android.widget.ViewAnimator;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.loader.app.LoaderManagerImpl;
import androidx.transition.Transition;
import com.bumptech.glide.load.Option;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.compose.ComposeCryptoStatus;
import com.fsck.k9.activity.compose.RecipientMvpView;
import com.fsck.k9.activity.compose.RecipientPresenter;
import com.fsck.k9.autocrypt.AutocryptDraftStateHeaderParser;
import com.fsck.k9.helper.ReplyToParser;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.message.AutocryptStatusInteractor$RecipientAutocryptStatus;
import com.fsck.k9.message.AutocryptStatusInteractor$RecipientAutocryptStatusType;
import com.fsck.k9.view.RecipientSelectView;
import com.fsck.k9.view.ToolableViewAnimator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientPresenter {
    public LegacyAccountDto account;
    public Address[] alwaysBccAddresses;
    public final Context context;
    public ComposeCryptoStatus currentCachedCryptoStatus;
    public CryptoMode currentCryptoMode;
    public boolean forceShowCcBcc;
    public Boolean hasContactPicker;
    public boolean isForceTextMessageFormat;
    public boolean isReplyToEncryptedMessage;
    public boolean isToAddressAdded;
    public Message$RecipientType lastFocusedType;
    public final OpenPgpApiManager openPgpApiManager;
    public final RecipientPresenter$openPgpCallback$1 openPgpCallback;
    public final RecipientMvpView recipientMvpView;
    public final ReplyToParser replyToParser;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CryptoMode {
        public static final /* synthetic */ CryptoMode[] $VALUES;
        public static final CryptoMode CHOICE_DISABLED;
        public static final CryptoMode CHOICE_ENABLED;
        public static final CryptoMode NO_CHOICE;
        public static final CryptoMode SIGN_ONLY;

        static {
            CryptoMode cryptoMode = new CryptoMode("SIGN_ONLY", 0);
            SIGN_ONLY = cryptoMode;
            CryptoMode cryptoMode2 = new CryptoMode("NO_CHOICE", 1);
            NO_CHOICE = cryptoMode2;
            CryptoMode cryptoMode3 = new CryptoMode("CHOICE_DISABLED", 2);
            CHOICE_DISABLED = cryptoMode3;
            CryptoMode cryptoMode4 = new CryptoMode("CHOICE_ENABLED", 3);
            CHOICE_ENABLED = cryptoMode4;
            $VALUES = new CryptoMode[]{cryptoMode, cryptoMode2, cryptoMode3, cryptoMode4};
        }

        public static CryptoMode valueOf(String str) {
            return (CryptoMode) Enum.valueOf(CryptoMode.class, str);
        }

        public static CryptoMode[] values() {
            return (CryptoMode[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[OpenPgpApiManager.OpenPgpProviderState.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[4] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[ComposeCryptoStatus.SendErrorState.values().length];
            try {
                iArr2[2] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[0] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[1] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[ComposeCryptoStatus.AttachErrorState.values().length];
            try {
                iArr3[0] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[Message$RecipientType.values().length];
            try {
                iArr4[0] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr4[1] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr4[2] = 3;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.fsck.k9.activity.compose.RecipientPresenter$openPgpCallback$1] */
    public RecipientPresenter(Context context, LoaderManagerImpl loaderManagerImpl, OpenPgpApiManager openPgpApiManager, RecipientMvpView recipientMvpView, LegacyAccountDto legacyAccountDto, Transition.AnonymousClass1 anonymousClass1, Option.AnonymousClass1 anonymousClass12, ReplyToParser replyToParser, AutocryptDraftStateHeaderParser autocryptDraftStateHeaderParser) {
        context.getClass();
        legacyAccountDto.getClass();
        this.context = context;
        this.openPgpApiManager = openPgpApiManager;
        this.recipientMvpView = recipientMvpView;
        this.replyToParser = replyToParser;
        this.lastFocusedType = Message$RecipientType.TO;
        this.currentCryptoMode = CryptoMode.NO_CHOICE;
        this.openPgpCallback = new OpenPgpApiManager.OpenPgpApiManagerCallback() { // from class: com.fsck.k9.activity.compose.RecipientPresenter$openPgpCallback$1
            @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
            public final void onOpenPgpProviderError(OpenPgpApiManager.OpenPgpProviderError openPgpProviderError) {
                RecipientPresenter recipientPresenter = RecipientPresenter.this;
                RecipientMvpView recipientMvpView2 = recipientPresenter.recipientMvpView;
                int ordinal = openPgpProviderError.ordinal();
                if (ordinal == 0) {
                    Toast.makeText(recipientMvpView2.activity, R.string.error_crypto_provider_connect, 1).show();
                    return;
                }
                if (ordinal == 1) {
                    recipientPresenter.openPgpApiManager.refreshConnection();
                } else if (ordinal != 2) {
                    Toast.makeText(recipientMvpView2.activity, R.string.error_crypto_provider_connect, 1).show();
                } else {
                    Toast.makeText(recipientMvpView2.activity, R.string.error_crypto_provider_incompatible, 1).show();
                }
            }

            @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
            public final void onOpenPgpProviderStatusChanged() {
                RecipientPresenter recipientPresenter = RecipientPresenter.this;
                if (recipientPresenter.openPgpApiManager.openPgpProviderState == OpenPgpApiManager.OpenPgpProviderState.UI_REQUIRED) {
                    Toast.makeText(recipientPresenter.recipientMvpView.activity, R.string.error_crypto_provider_ui_required, 1).show();
                }
                recipientPresenter.asyncUpdateCryptoStatus();
            }
        };
        recipientMvpView.presenter = this;
        RecipientSelectView recipientSelectView = recipientMvpView.toView;
        final int i = 0;
        recipientSelectView.setTokenListener(new RecipientSelectView.TokenListener(this) { // from class: com.fsck.k9.activity.compose.RecipientMvpView$setPresenter$1
            public final /* synthetic */ RecipientPresenter $presenter;

            {
                this.$presenter = this;
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenAdded(Object obj) {
                int i2 = i;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i2) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.fsck.k9.view.RecipientSelectView.TokenListener
            public final void onTokenChanged(RecipientSelectView.Recipient recipient) {
                int i2 = i;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i2) {
                    case 0:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenIgnored(Object obj) {
                switch (i) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenRemoved(Object obj) {
                int i2 = i;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i2) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }
        });
        RecipientSelectView recipientSelectView2 = recipientMvpView.ccView;
        final int i2 = 1;
        recipientSelectView2.setTokenListener(new RecipientSelectView.TokenListener(this) { // from class: com.fsck.k9.activity.compose.RecipientMvpView$setPresenter$1
            public final /* synthetic */ RecipientPresenter $presenter;

            {
                this.$presenter = this;
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenAdded(Object obj) {
                int i22 = i2;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.fsck.k9.view.RecipientSelectView.TokenListener
            public final void onTokenChanged(RecipientSelectView.Recipient recipient) {
                int i22 = i2;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenIgnored(Object obj) {
                switch (i2) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenRemoved(Object obj) {
                int i22 = i2;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }
        });
        RecipientSelectView recipientSelectView3 = recipientMvpView.bccView;
        final int i3 = 2;
        recipientSelectView3.setTokenListener(new RecipientSelectView.TokenListener(this) { // from class: com.fsck.k9.activity.compose.RecipientMvpView$setPresenter$1
            public final /* synthetic */ RecipientPresenter $presenter;

            {
                this.$presenter = this;
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenAdded(Object obj) {
                int i22 = i3;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.fsck.k9.view.RecipientSelectView.TokenListener
            public final void onTokenChanged(RecipientSelectView.Recipient recipient) {
                int i22 = i3;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenIgnored(Object obj) {
                switch (i3) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        break;
                }
            }

            @Override // com.tokenautocomplete.TokenCompleteTextView.TokenListener
            public final void onTokenRemoved(Object obj) {
                int i22 = i3;
                RecipientPresenter recipientPresenter = this.$presenter;
                switch (i22) {
                    case 0:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    case 1:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                    default:
                        ((RecipientSelectView.Recipient) obj).getClass();
                        recipientPresenter.asyncUpdateCryptoStatus();
                        break;
                }
            }
        });
        recipientSelectView.setLoaderManager(loaderManagerImpl);
        recipientSelectView2.setLoaderManager(loaderManagerImpl);
        recipientSelectView3.setLoaderManager(loaderManagerImpl);
        onSwitchAccount(legacyAccountDto);
    }

    public static Address[] toAddressArray(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Pattern pattern = Address.ATOM;
            CollectionsKt.addAll(ArraysKt___ArraysKt.toList(K9MailLib.parseUnencoded(str)), arrayList);
        }
        return (Address[]) arrayList.toArray(new Address[0]);
    }

    public final void addBccAddresses(Address... addressArr) {
        if (addressArr.length == 0) {
            return;
        }
        addRecipientsFromAddresses(Message$RecipientType.BCC, (Address[]) Arrays.copyOf(addressArr, addressArr.length));
        this.recipientMvpView.setBccVisibility(true);
        updateRecipientExpanderVisibility();
    }

    public final void addCcAddresses(Address... addressArr) {
        if (addressArr.length == 0) {
            return;
        }
        addRecipientsFromAddresses(Message$RecipientType.CC, (Address[]) Arrays.copyOf(addressArr, addressArr.length));
        this.recipientMvpView.setCcVisibility(true);
        updateRecipientExpanderVisibility();
    }

    public final void addRecipientsFromAddresses(Message$RecipientType message$RecipientType, Address... addressArr) {
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        new RecipientPresenter$addRecipientFromContactUri$1(this, message$RecipientType, this.context, legacyAccountDto.getOpenPgpProvider(), Arrays.copyOf(addressArr, addressArr.length)).startLoading();
    }

    public final void addToAddresses(Address... addressArr) {
        addRecipientsFromAddresses(Message$RecipientType.TO, (Address[]) Arrays.copyOf(addressArr, addressArr.length));
        this.isToAddressAdded = true;
    }

    public final void asyncUpdateCryptoStatus() {
        this.currentCachedCryptoStatus = null;
        OpenPgpApiManager.OpenPgpProviderState openPgpProviderState = this.openPgpApiManager.openPgpProviderState;
        LegacyAccountDto legacyAccountDto = this.account;
        if (legacyAccountDto == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        long openPgpKey = legacyAccountDto.getOpenPgpKey();
        Long valueOf = openPgpKey == 0 ? null : Long.valueOf(openPgpKey);
        RecipientMvpView recipientMvpView = this.recipientMvpView;
        List objects = recipientMvpView.toView.getObjects();
        objects.getClass();
        List objects2 = recipientMvpView.ccView.getObjects();
        objects2.getClass();
        ArrayList plus = CollectionsKt.plus((Collection) objects, (Iterable) objects2);
        List objects3 = recipientMvpView.bccView.getObjects();
        objects3.getClass();
        ArrayList plus2 = CollectionsKt.plus((Collection) plus, (Iterable) objects3);
        boolean z = this.isForceTextMessageFormat;
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        boolean autocryptPreferEncryptMutual = legacyAccountDto2.getAutocryptPreferEncryptMutual();
        boolean z2 = this.isReplyToEncryptedMessage;
        LegacyAccountDto legacyAccountDto3 = this.account;
        if (legacyAccountDto3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        boolean isOpenPgpEncryptAllDrafts = legacyAccountDto3.isOpenPgpEncryptAllDrafts();
        LegacyAccountDto legacyAccountDto4 = this.account;
        if (legacyAccountDto4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        boolean isOpenPgpEncryptSubject = legacyAccountDto4.isOpenPgpEncryptSubject();
        CryptoMode cryptoMode = this.currentCryptoMode;
        cryptoMode.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus2, 10));
        Iterator it = plus2.iterator();
        while (it.hasNext()) {
            arrayList.add(((RecipientSelectView.Recipient) it.next()).address.address);
        }
        final ComposeCryptoStatus composeCryptoStatus = new ComposeCryptoStatus(openPgpProviderState, valueOf, arrayList, z, autocryptPreferEncryptMutual, z2, isOpenPgpEncryptAllDrafts, isOpenPgpEncryptSubject, cryptoMode, null);
        if (openPgpProviderState != OpenPgpApiManager.OpenPgpProviderState.OK) {
            this.currentCachedCryptoStatus = composeCryptoStatus;
            redrawCachedCryptoStatusIcon();
        } else {
            final String[] strArr = composeCryptoStatus.recipientAddressesAsArray;
            new AsyncTask() { // from class: com.fsck.k9.activity.compose.RecipientPresenter$asyncUpdateCryptoStatus$1
                @Override // android.os.AsyncTask
                public final Object doInBackground(Object[] objArr) {
                    AutocryptStatusInteractor$RecipientAutocryptStatusType autocryptStatusInteractor$RecipientAutocryptStatusType;
                    ((Void[]) objArr).getClass();
                    OpenPgpApi openPgpApi = RecipientPresenter.this.openPgpApiManager.getOpenPgpApi();
                    if (openPgpApi == null) {
                        return null;
                    }
                    String[] strArr2 = strArr;
                    strArr2.getClass();
                    Intent intent = new Intent("org.openintents.openpgp.action.QUERY_AUTOCRYPT_STATUS");
                    intent.putExtra("user_ids", strArr2);
                    Intent executeApi = openPgpApi.executeApi(intent, null);
                    int intExtra = executeApi.getIntExtra("result_code", 0);
                    AutocryptStatusInteractor$RecipientAutocryptStatusType autocryptStatusInteractor$RecipientAutocryptStatusType2 = AutocryptStatusInteractor$RecipientAutocryptStatusType.ERROR;
                    if (intExtra == 0) {
                        OpenPgpError openPgpError = (OpenPgpError) Utf8.SafeProcessor.getParcelableExtra(executeApi, "error", OpenPgpError.class);
                        if (openPgpError != null) {
                            Log.w("OpenPGP API Error #%s: %s", Integer.valueOf(openPgpError.errorId), openPgpError.message);
                        } else {
                            Log.w("OpenPGP API Unknown Error", new Object[0]);
                        }
                        return new AutocryptStatusInteractor$RecipientAutocryptStatus(autocryptStatusInteractor$RecipientAutocryptStatusType2, null);
                    }
                    if (intExtra != 1) {
                        return intExtra != 2 ? new AutocryptStatusInteractor$RecipientAutocryptStatus(autocryptStatusInteractor$RecipientAutocryptStatusType2, null) : new AutocryptStatusInteractor$RecipientAutocryptStatus(autocryptStatusInteractor$RecipientAutocryptStatusType2, null);
                    }
                    boolean booleanExtra = executeApi.getBooleanExtra("keys_confirmed", false);
                    int intExtra2 = executeApi.getIntExtra("autocrypt_status", 0);
                    if (intExtra2 == 0) {
                        autocryptStatusInteractor$RecipientAutocryptStatusType = AutocryptStatusInteractor$RecipientAutocryptStatusType.UNAVAILABLE;
                    } else if (intExtra2 == 1) {
                        autocryptStatusInteractor$RecipientAutocryptStatusType = booleanExtra ? AutocryptStatusInteractor$RecipientAutocryptStatusType.DISCOURAGE_CONFIRMED : AutocryptStatusInteractor$RecipientAutocryptStatusType.DISCOURAGE_UNCONFIRMED;
                    } else if (intExtra2 == 2) {
                        autocryptStatusInteractor$RecipientAutocryptStatusType = booleanExtra ? AutocryptStatusInteractor$RecipientAutocryptStatusType.AVAILABLE_CONFIRMED : AutocryptStatusInteractor$RecipientAutocryptStatusType.AVAILABLE_UNCONFIRMED;
                    } else {
                        if (intExtra2 != 3) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("encountered bad autocrypt status number!");
                            return null;
                        }
                        autocryptStatusInteractor$RecipientAutocryptStatusType = booleanExtra ? AutocryptStatusInteractor$RecipientAutocryptStatusType.RECOMMENDED_CONFIRMED : AutocryptStatusInteractor$RecipientAutocryptStatusType.RECOMMENDED_UNCONFIRMED;
                    }
                    return new AutocryptStatusInteractor$RecipientAutocryptStatus(autocryptStatusInteractor$RecipientAutocryptStatusType, (PendingIntent) Utf8.SafeProcessor.getParcelableExtra(executeApi, "intent", PendingIntent.class));
                }

                @Override // android.os.AsyncTask
                public final void onPostExecute(Object obj) {
                    AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus = (AutocryptStatusInteractor$RecipientAutocryptStatus) obj;
                    ComposeCryptoStatus composeCryptoStatus2 = composeCryptoStatus;
                    if (autocryptStatusInteractor$RecipientAutocryptStatus != null) {
                        OpenPgpApiManager.OpenPgpProviderState openPgpProviderState2 = composeCryptoStatus2.openPgpProviderState;
                        RecipientPresenter.CryptoMode cryptoMode2 = composeCryptoStatus2.cryptoMode;
                        composeCryptoStatus2 = new ComposeCryptoStatus(openPgpProviderState2, composeCryptoStatus2.openPgpKeyId, composeCryptoStatus2.recipientAddresses, composeCryptoStatus2.isPgpInlineModeEnabled, composeCryptoStatus2.isSenderPreferEncryptMutual, composeCryptoStatus2.isReplyToEncrypted, composeCryptoStatus2.isEncryptAllDrafts, composeCryptoStatus2.isEncryptSubject, cryptoMode2, autocryptStatusInteractor$RecipientAutocryptStatus);
                    }
                    RecipientPresenter recipientPresenter = RecipientPresenter.this;
                    recipientPresenter.currentCachedCryptoStatus = composeCryptoStatus2;
                    recipientPresenter.redrawCachedCryptoStatusIcon();
                }
            }.execute(new Void[0]);
        }
    }

    public final List getToAddresses() {
        Address[] addresses = this.recipientMvpView.toView.getAddresses();
        addresses.getClass();
        return ArraysKt___ArraysKt.toList(addresses);
    }

    public final void onMenuSetSignOnly(boolean z) {
        if (!z) {
            this.currentCryptoMode = CryptoMode.NO_CHOICE;
            asyncUpdateCryptoStatus();
            return;
        }
        this.currentCryptoMode = CryptoMode.SIGN_ONLY;
        asyncUpdateCryptoStatus();
        int i = K9.pgpSignOnlyDialogCounter;
        if (i < 2) {
            K9.pgpSignOnlyDialogCounter = i + 1;
            K9.saveSettingsAsync();
            this.recipientMvpView.showOpenPgpSignOnlyDialog(true);
        }
    }

    public final void onSwitchAccount(LegacyAccountDto legacyAccountDto) {
        RecipientMvpView recipientMvpView = this.recipientMvpView;
        RecipientSelectView recipientSelectView = recipientMvpView.bccView;
        legacyAccountDto.getClass();
        this.account = legacyAccountDto;
        if (this.forceShowCcBcc || legacyAccountDto.isAlwaysShowCcBcc()) {
            recipientMvpView.setCcVisibility(true);
            recipientMvpView.setBccVisibility(true);
            updateRecipientExpanderVisibility();
        }
        Address[] addressArr = this.alwaysBccAddresses;
        if (addressArr != null && addressArr.length != 0) {
            Set set = ArraysKt___ArraysKt.toSet(addressArr);
            List objects = recipientSelectView.getObjects();
            objects.getClass();
            for (RecipientSelectView.Recipient recipient : CollectionsKt.toList(objects)) {
                recipientMvpView.removeAllTextChangedListeners(recipientSelectView);
                if (set.contains(recipient.address)) {
                    recipientSelectView.removeObjectSync(recipient);
                }
                recipientMvpView.addAllTextChangedListeners(recipientSelectView);
            }
        }
        Pattern pattern = Address.ATOM;
        LegacyAccountDto legacyAccountDto2 = this.account;
        if (legacyAccountDto2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("account");
            throw null;
        }
        Address[] m931parse = K9MailLib.m931parse(legacyAccountDto2.getAlwaysBcc());
        this.alwaysBccAddresses = m931parse;
        if (m931parse.length != 0) {
            LegacyAccountDto legacyAccountDto3 = this.account;
            if (legacyAccountDto3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("account");
                throw null;
            }
            final String openPgpProvider = legacyAccountDto3.getOpenPgpProvider();
            final Object[] copyOf = Arrays.copyOf(m931parse, m931parse.length);
            final Context context = this.context;
            new RecipientLoader(context, openPgpProvider, copyOf) { // from class: com.fsck.k9.activity.compose.RecipientPresenter$addAlwaysBcc$1
                {
                    Address[] addressArr2 = (Address[]) copyOf;
                }

                @Override // com.fsck.k9.activity.compose.RecipientLoader, androidx.loader.content.AsyncTaskLoader
                public final void deliverResult(List list) {
                    list.getClass();
                    RecipientSelectView.Recipient[] recipientArr = (RecipientSelectView.Recipient[]) list.toArray(new RecipientSelectView.Recipient[0]);
                    RecipientMvpView recipientMvpView2 = RecipientPresenter.this.recipientMvpView;
                    RecipientSelectView.Recipient[] recipientArr2 = (RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length);
                    RecipientSelectView recipientSelectView2 = recipientMvpView2.bccView;
                    recipientMvpView2.removeAllTextChangedListeners(recipientSelectView2);
                    recipientSelectView2.addRecipients((RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr2, recipientArr2.length));
                    recipientMvpView2.addAllTextChangedListeners(recipientSelectView2);
                    this.mStarted = false;
                    this.mAbandoned = true;
                    onAbandon();
                }
            }.startLoading();
        }
        String openPgpProvider2 = legacyAccountDto.getOpenPgpProvider();
        recipientMvpView.toView.setCryptoProvider(openPgpProvider2);
        recipientMvpView.ccView.setCryptoProvider(openPgpProvider2);
        recipientSelectView.setCryptoProvider(openPgpProvider2);
        this.openPgpApiManager.setOpenPgpProvider(openPgpProvider2, this.openPgpCallback);
    }

    public final void redrawCachedCryptoStatusIcon() {
        ComposeCryptoStatus composeCryptoStatus = this.currentCachedCryptoStatus;
        if (composeCryptoStatus == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("must have cached crypto status to redraw it!");
            return;
        }
        boolean z = composeCryptoStatus.isEncryptionEnabled;
        RecipientMvpView recipientMvpView = this.recipientMvpView;
        recipientMvpView.toView.setShowCryptoEnabled(z);
        recipientMvpView.ccView.setShowCryptoEnabled(z);
        recipientMvpView.bccView.setShowCryptoEnabled(z);
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType = composeCryptoStatus.displayType;
        cryptoStatusDisplayType.getClass();
        int i = cryptoStatusDisplayType.childIdToDisplay;
        ToolableViewAnimator toolableViewAnimator = recipientMvpView.cryptoStatusView;
        if (i == -1) {
            toolableViewAnimator.animate().translationXBy(100.0f).alpha(0.0f).setDuration(195L).setInterpolator(RecipientMvpView.CRYPTO_ICON_OUT_ANIMATOR).start();
        } else {
            toolableViewAnimator.setVisibility(0);
            toolableViewAnimator.setDisplayedChildId(i);
            toolableViewAnimator.animate().translationX(0.0f).alpha(1.0f).setDuration(225L).setInterpolator(RecipientMvpView.CRYPTO_ICON_IN_ANIMATOR).start();
        }
        RecipientMvpView.CryptoSpecialModeDisplayType cryptoSpecialModeDisplayType = composeCryptoStatus.specialModeDisplayType;
        cryptoSpecialModeDisplayType.getClass();
        int i2 = cryptoSpecialModeDisplayType.childIdToDisplay;
        ToolableViewAnimator toolableViewAnimator2 = recipientMvpView.cryptoSpecialModeIndicator;
        if (i2 == -1) {
            toolableViewAnimator2.setVisibility(8);
            return;
        }
        toolableViewAnimator2.setVisibility(0);
        toolableViewAnimator2.setDisplayedChildId(i2);
        recipientMvpView.activity.invalidateOptionsMenu();
    }

    public final void toggleEncryptionState(boolean z) {
        RecipientMvpView recipientMvpView = this.recipientMvpView;
        MessageCompose messageCompose = recipientMvpView.activity;
        ComposeCryptoStatus composeCryptoStatus = this.currentCachedCryptoStatus;
        if (composeCryptoStatus == null) {
            Log.e("click on crypto status while crypto status not available - should not really happen?!", new Object[0]);
            return;
        }
        if (composeCryptoStatus.isEncryptionEnabled && !composeCryptoStatus.allRecipientsCanEncrypt()) {
            recipientMvpView.showOpenPgpEnabledErrorDialog();
            return;
        }
        if (this.currentCryptoMode == CryptoMode.SIGN_ONLY) {
            Toast.makeText(messageCompose, R.string.error_sign_only_no_encryption, 1).show();
            return;
        }
        boolean z2 = (composeCryptoStatus.allRecipientsCanEncrypt() && composeCryptoStatus.isSenderPreferEncryptMutual && composeCryptoStatus.isRecipientsPreferEncryptMutual) || composeCryptoStatus.isReplyToEncrypted;
        CryptoMode cryptoMode = this.currentCryptoMode;
        CryptoMode cryptoMode2 = CryptoMode.CHOICE_ENABLED;
        CryptoMode cryptoMode3 = CryptoMode.CHOICE_DISABLED;
        CryptoMode cryptoMode4 = CryptoMode.NO_CHOICE;
        if (cryptoMode != cryptoMode4) {
            if (cryptoMode != cryptoMode3 || z2) {
                this.currentCryptoMode = cryptoMode4;
                asyncUpdateCryptoStatus();
                return;
            } else {
                this.currentCryptoMode = cryptoMode2;
                asyncUpdateCryptoStatus();
                return;
            }
        }
        AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus = composeCryptoStatus.recipientAutocryptStatus;
        if (autocryptStatusInteractor$RecipientAutocryptStatus != null && autocryptStatusInteractor$RecipientAutocryptStatus.intent != null) {
            recipientMvpView.launchUserInteractionPendingIntent(composeCryptoStatus.autocryptPendingIntent, 5);
            return;
        }
        if (z2) {
            this.currentCryptoMode = cryptoMode3;
            asyncUpdateCryptoStatus();
            return;
        }
        this.currentCryptoMode = cryptoMode2;
        asyncUpdateCryptoStatus();
        if (z) {
            PgpEncryptDescriptionDialog pgpEncryptDescriptionDialog = new PgpEncryptDescriptionDialog();
            Bundle bundle = new Bundle();
            bundle.putInt("highlighted_view", R.id.crypto_status_anchor);
            pgpEncryptDescriptionDialog.setArguments(bundle);
            pgpEncryptDescriptionDialog.show(messageCompose.getSupportFragmentManager(), "openpgp_description");
        }
    }

    public final void updateRecipientExpanderVisibility() {
        RecipientMvpView recipientMvpView = this.recipientMvpView;
        int i = ((recipientMvpView.ccWrapper.getVisibility() == 0 && recipientMvpView.bccWrapper.getVisibility() == 0) ? 0 : 1) ^ 1;
        ViewAnimator viewAnimator = recipientMvpView.recipientExpanderContainer;
        if (viewAnimator.getDisplayedChild() != i) {
            viewAnimator.setDisplayedChild(i);
        }
    }
}
