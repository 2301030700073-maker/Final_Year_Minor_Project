package net.thunderbird.feature.search.legacy;

import net.thunderbird.feature.mail.account.api.BaseAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SearchAccount implements BaseAccount {
    public final String email;
    public final String name;
    public final LocalMessageSearch relatedSearch;

    public SearchAccount(LocalMessageSearch localMessageSearch, String str, String str2) {
        this.name = str;
        this.email = str2;
        this.relatedSearch = localMessageSearch;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final String getEmail() {
        return this.email;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final String getName() {
        return this.name;
    }

    @Override // net.thunderbird.feature.mail.account.api.BaseAccount
    public final String getUuid() {
        return "unified_folders";
    }
}
