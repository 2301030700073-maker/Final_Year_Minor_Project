package org.wikipedia.auth;

import android.accounts.AbstractAccountAuthenticator;
import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.UStringsKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikimediaAuthenticator extends AbstractAccountAuthenticator {
    public final AuthenticatorService context;

    public WikimediaAuthenticator(AuthenticatorService authenticatorService) {
        super(authenticatorService);
        this.context = authenticatorService;
    }

    public static Bundle unsupportedOperation() {
        return UStringsKt.bundleOf(new Pair("errorCode", 6), new Pair("errorMessage", ""));
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle addAccount(AccountAuthenticatorResponse accountAuthenticatorResponse, String str, String str2, String[] strArr, Bundle bundle) {
        Account account;
        accountAuthenticatorResponse.getClass();
        str.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = Jsoup.getInstance().getString(R.string.account_type);
        string.getClass();
        if (string.equals(str)) {
            try {
                AccountManager accountManager = AccountManager.get(Jsoup.getInstance());
                accountManager.getClass();
                String string2 = Jsoup.getInstance().getString(R.string.account_type);
                string2.getClass();
                Account[] accountsByType = accountManager.getAccountsByType(string2);
                accountsByType.getClass();
                account = (Account) ArraysKt___ArraysKt.firstOrNull(accountsByType);
            } catch (SecurityException e) {
                L.logRemoteErrorIfProd(e);
                account = null;
            }
            if (account == null) {
                int i = LoginActivity.$r8$clinit;
                Intent putExtra = Path.Companion.newIntent((Context) this.context, "system", true).putExtra("accountAuthenticatorResponse", accountAuthenticatorResponse);
                putExtra.getClass();
                return UStringsKt.bundleOf(new Pair("intent", putExtra));
            }
        }
        return unsupportedOperation();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle confirmCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, Bundle bundle) {
        accountAuthenticatorResponse.getClass();
        account.getClass();
        return unsupportedOperation();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle editProperties(AccountAuthenticatorResponse accountAuthenticatorResponse, String str) {
        accountAuthenticatorResponse.getClass();
        str.getClass();
        return unsupportedOperation();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle getAuthToken(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
        accountAuthenticatorResponse.getClass();
        account.getClass();
        str.getClass();
        return unsupportedOperation();
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final String getAuthTokenLabel(String str) {
        str.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String string = Jsoup.getInstance().getString(R.string.account_type);
        string.getClass();
        if (string.equals(str)) {
            return this.context.getString(R.string.wikimedia);
        }
        return null;
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle hasFeatures(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String[] strArr) {
        accountAuthenticatorResponse.getClass();
        account.getClass();
        strArr.getClass();
        return UStringsKt.bundleOf(new Pair("booleanResult", Boolean.FALSE));
    }

    @Override // android.accounts.AbstractAccountAuthenticator
    public final Bundle updateCredentials(AccountAuthenticatorResponse accountAuthenticatorResponse, Account account, String str, Bundle bundle) {
        accountAuthenticatorResponse.getClass();
        account.getClass();
        return unsupportedOperation();
    }
}
