package net.thunderbird.feature.account.storage.legacy;

import com.fsck.k9.preferences.K9StorageEditor;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.profile.AvatarDto;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyProfileDtoStorageHandler {
    public final void delete(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        AccountId accountId = legacyAccountDto.id;
        accountId.getClass();
        k9StorageEditor.remove(accountId + ".description");
        k9StorageEditor.remove(accountId + ".chipColor");
        ConnectionPool connectionPool = new ConnectionPool(accountId);
        k9StorageEditor.remove(connectionPool.create("avatarType"));
        k9StorageEditor.remove(connectionPool.create("avatarMonogram"));
        k9StorageEditor.remove(connectionPool.create("avatarImageUri"));
        k9StorageEditor.remove(connectionPool.create("avatarIconName"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0057, code lost:
    
        if (r6 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void load(java.lang.Object r7, net.thunderbird.core.preference.storage.InMemoryStorage r8) {
        /*
            r6 = this;
            net.thunderbird.core.android.account.LegacyAccountDto r7 = (net.thunderbird.core.android.account.LegacyAccountDto) r7
            net.thunderbird.feature.account.AccountId r6 = r7.id
            r6.getClass()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            java.lang.String r1 = "."
            r0.append(r1)
            java.lang.String r2 = "description"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r8.getStringOrNull(r0)
            r7.setName(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            r0.append(r1)
            java.lang.String r2 = "chipColor"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r2 = 39372(0x99cc, float:5.5172E-41)
            int r0 = r8.getInt(r0, r2)
            r7.setChipColor(r0)
            okhttp3.ConnectionPool r0 = new okhttp3.ConnectionPool
            r0.<init>(r6)
            java.lang.String r6 = "avatarType"
            java.lang.String r6 = r0.create(r6)
            java.lang.String r2 = r8.getStringOrNull(r6)
            if (r2 == 0) goto L99
            net.thunderbird.feature.account.storage.profile.AvatarTypeDto r6 = net.thunderbird.feature.account.storage.profile.AvatarTypeDto.valueOf(r2)     // Catch: java.lang.IllegalArgumentException -> L5a
            if (r6 == 0) goto L99
            goto L9b
        L5a:
            r0 = move-exception
            r7 = r0
            java.lang.String r8 = "] value ["
            java.lang.String r0 = "] "
            java.lang.String r3 = "Unable to convert stored key ["
            java.lang.String r6 = coil3.size.ViewSizeResolver.CC.m(r3, r6, r8, r2, r0)
            java.lang.Class<net.thunderbird.feature.account.storage.profile.AvatarTypeDto> r8 = net.thunderbird.feature.account.storage.profile.AvatarTypeDto.class
            kotlin.jvm.internal.ClassReference r8 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r8)
            java.lang.String r8 = r8.getQualifiedName()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "to enum of type "
            r0.<init>(r2)
            r0.append(r8)
            r0.append(r1)
            java.lang.String r8 = r0.toString()
            net.thunderbird.feature.account.storage.profile.AvatarTypeDto[] r0 = net.thunderbird.feature.account.storage.profile.AvatarTypeDto.values()
            r4 = 0
            r5 = 63
            r1 = 0
            r2 = 0
            r3 = 0
            java.lang.String r0 = kotlin.collections.ArraysKt___ArraysKt.joinToString$default(r0, r1, r2, r3, r4, r5)
            java.lang.String r1 = "Valid values: "
            java.lang.String r0 = r1.concat(r0)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r6, r8, r0, r7)
            return
        L99:
            net.thunderbird.feature.account.storage.profile.AvatarTypeDto r6 = net.thunderbird.feature.account.storage.profile.AvatarTypeDto.MONOGRAM
        L9b:
            java.lang.String r1 = "avatarMonogram"
            java.lang.String r1 = r0.create(r1)
            java.lang.String r1 = r8.getStringOrNull(r1)
            java.lang.String r2 = "avatarImageUri"
            java.lang.String r2 = r0.create(r2)
            java.lang.String r2 = r8.getStringOrNull(r2)
            java.lang.String r3 = "avatarIconName"
            java.lang.String r0 = r0.create(r3)
            java.lang.String r8 = r8.getStringOrNull(r0)
            net.thunderbird.feature.account.storage.profile.AvatarDto r0 = new net.thunderbird.feature.account.storage.profile.AvatarDto
            r0.<init>(r6, r1, r2, r8)
            r7.setAvatar(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.account.storage.legacy.LegacyProfileDtoStorageHandler.load(java.lang.Object, net.thunderbird.core.preference.storage.InMemoryStorage):void");
    }

    public final void save(LegacyAccountDto legacyAccountDto, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor) {
        legacyAccountDto.getClass();
        AccountId accountId = legacyAccountDto.id;
        accountId.getClass();
        k9StorageEditor.putString(accountId + ".description", legacyAccountDto.getName());
        k9StorageEditor.putInt(accountId + ".chipColor", legacyAccountDto.getChipColor());
        ConnectionPool connectionPool = new ConnectionPool(accountId);
        AvatarDto avatar = legacyAccountDto.getAvatar();
        k9StorageEditor.putString(connectionPool.create("avatarType"), avatar.avatarType.name());
        k9StorageEditor.putString(connectionPool.create("avatarMonogram"), avatar.avatarMonogram);
        k9StorageEditor.putString(connectionPool.create("avatarImageUri"), avatar.avatarImageUri);
        k9StorageEditor.putString(connectionPool.create("avatarIconName"), avatar.avatarIconName);
    }
}
