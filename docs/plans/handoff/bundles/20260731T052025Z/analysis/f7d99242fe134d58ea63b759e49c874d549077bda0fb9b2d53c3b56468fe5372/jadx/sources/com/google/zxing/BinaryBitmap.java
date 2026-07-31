package com.google.zxing;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.system.ErrnoException;
import android.system.Os;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuItem;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.viewpager.widget.ViewPager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.EmailAddressValidator;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageLoaderHelper$4$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda9;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.filter.FixedLengthInputStream;
import com.fsck.k9.mail.filter.PeekableInputStream;
import com.fsck.k9.mail.store.imap.ImapClientInfo;
import com.fsck.k9.mail.store.imap.ImapResponse;
import com.fsck.k9.mail.store.imap.ImapResponseCallback;
import com.fsck.k9.mail.store.imap.ImapStoreConfig;
import com.fsck.k9.mail.transport.smtp.EnhancedStatusCode;
import com.fsck.k9.mail.transport.smtp.SmtpResponse;
import com.fsck.k9.mail.transport.smtp.SmtpResponseParserException;
import com.fsck.k9.mail.transport.smtp.StatusCodeClass;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.ValidatedSettings$Server;
import com.fsck.k9.storage.migrations.MigrationTo90;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.jcraft.jzlib.Adler32;
import com.squareup.moshi.JsonUtf8Writer;
import de.cketti.changelog.ReleaseItem;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Result;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.Duration;
import kotlin.time.Instant;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.JobSupport$onJoin$1;
import kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.CacheEntry;
import kotlinx.serialization.internal.KTypeWrapper;
import kotlinx.serialization.internal.ParametrizedCacheEntry;
import kotlinx.serialization.internal.ParametrizedSerializerCache;
import kotlinx.serialization.internal.SerializerCache;
import net.thunderbird.core.android.account.Expunge;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.common.state.StateMachine;
import net.thunderbird.core.common.state.debug.DiffContext;
import net.thunderbird.core.common.state.debug.ValueFormatter;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$DeselectAll;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SelectAll;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import okhttp3.ConnectionPool;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.RealBufferedSource;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BinaryBitmap implements ImapResponseCallback, ImapStoreConfig, ActionMode.Callback, OnApplyWindowInsetsListener, SerializerCache, ParametrizedSerializerCache {
    public final /* synthetic */ int $r8$classId;
    public Object binarizer;
    public Object matrix;

    public BinaryBitmap(GenericGF genericGF, int[] iArr) {
        this.$r8$classId = 20;
        if (iArr.length == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
            throw null;
        }
        this.binarizer = genericGF;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.matrix = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.matrix = new int[]{0};
            return;
        }
        int i2 = length - i;
        int[] iArr2 = new int[i2];
        this.matrix = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, i2);
    }

    public static ArrayList merge(List list, List list2) {
        SparseArray sparseArray = new SparseArray();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ReleaseItem releaseItem = (ReleaseItem) it.next();
            sparseArray.put(releaseItem.versionCode, releaseItem);
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ReleaseItem releaseItem2 = (ReleaseItem) list.get(i);
            arrayList.add((ReleaseItem) sparseArray.get(releaseItem2.versionCode, releaseItem2));
        }
        Collections.sort(arrayList, new ViewPager.AnonymousClass1(22));
        return arrayList;
    }

    public static BinaryBitmap of(String... strArr) {
        try {
            ByteString[] byteStringArr = new ByteString[strArr.length];
            Buffer buffer = new Buffer();
            for (int i = 0; i < strArr.length; i++) {
                JsonUtf8Writer.string(buffer, strArr[i]);
                buffer.readByte();
                byteStringArr[i] = buffer.readByteString(buffer.size);
            }
            return new BinaryBitmap(22, (String[]) strArr.clone(), Options.Companion.of(byteStringArr));
        } catch (IOException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
            return null;
        }
    }

    public static final EnhancedStatusCode readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(Buffer buffer, BinaryBitmap binaryBitmap, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef, int i) {
        EnhancedStatusCode readEnhancedStatusCode;
        int i2 = i / 100;
        if (i2 == 2 || i2 == 4 || i2 == 5) {
            try {
                RealBufferedSource peek = buffer.peek();
                readEnhancedStatusCode = binaryBitmap.readEnhancedStatusCode(peek, i2);
                buffer.skip(buffer.size - peek.bufferField.size);
            } catch (SmtpResponseParserException e) {
                Log.v(e, "Error parsing enhanced status code", Arrays.copyOf(new Object[0], 0));
            }
            if (!ref$BooleanRef.element || Intrinsics.areEqual(ref$ObjectRef.element, readEnhancedStatusCode)) {
                ref$BooleanRef.element = false;
                return readEnhancedStatusCode;
            }
            binaryBitmap.parserError("Multi-line response with enhanced status codes not matching: " + ref$ObjectRef.element + " != " + readEnhancedStatusCode, true);
            throw null;
        }
        readEnhancedStatusCode = null;
        if (ref$BooleanRef.element) {
        }
        ref$BooleanRef.element = false;
        return readEnhancedStatusCode;
    }

    public BinaryBitmap addOrSubtract(BinaryBitmap binaryBitmap) {
        GenericGF genericGF = (GenericGF) this.binarizer;
        if (!genericGF.equals((GenericGF) binaryBitmap.binarizer)) {
            UriKt$$ExternalSyntheticBUOutline0.m("GenericGFPolys do not have same GenericGF field");
            return null;
        }
        if (isZero()) {
            return binaryBitmap;
        }
        if (binaryBitmap.isZero()) {
            return this;
        }
        int[] iArr = (int[]) this.matrix;
        int[] iArr2 = (int[]) binaryBitmap.matrix;
        if (iArr.length <= iArr2.length) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = iArr2[i - length] ^ iArr[i];
        }
        return new BinaryBitmap(genericGF, iArr3);
    }

    public String buildTransitionRecord(StateMachine.StateTransitionRecord stateTransitionRecord, Instant instant) {
        stateTransitionRecord.getClass();
        Object obj = stateTransitionRecord.event;
        StringBuilder sb = new StringBuilder();
        Object obj2 = stateTransitionRecord.previousState;
        Object obj3 = stateTransitionRecord.newState;
        boolean z = obj2.getClass() != obj3.getClass();
        String str = z ? "->" : "⟳";
        String str2 = instant != null ? "+" + Duration.m996getInWholeMillisecondsimpl(stateTransitionRecord.timestamp.m1004minusUwyO8pc(instant)) + "ms" : "";
        sb.append(Reflection.getOrCreateKotlinClass(obj2.getClass()).getSimpleName() + " " + str + " " + Reflection.getOrCreateKotlinClass(obj3.getClass()).getSimpleName());
        sb.append(StringsKt__IndentKt.prependIndent(CameraDevices$CC.m("event=", Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName()), StringsKt__StringsJVMKt.repeat(" ", 2)));
        if (str2.length() > 0) {
            sb.append(StringsKt__IndentKt.prependIndent(str2, StringsKt__StringsJVMKt.repeat(" ", 2)));
        }
        sb.append('\n');
        Map propertyMap = RangesKt.toPropertyMap(obj);
        if (!propertyMap.isEmpty()) {
            sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), " payload:"), StringsKt__StringsJVMKt.repeat(" ", 2)));
            sb.append('\n');
            for (Map.Entry entry : propertyMap.entrySet()) {
                sb.append(StringsKt__IndentKt.prependIndent(Config.CC.m((String) entry.getKey(), ": ", ValueFormatter.format$default((ValueFormatter) this.binarizer, entry.getValue())), StringsKt__StringsJVMKt.repeat(" ", 4)));
                sb.append('\n');
            }
        }
        sb.append(StringsKt__IndentKt.prependIndent(ViewSizeResolver.CC.m(Reflection.getOrCreateKotlinClass(obj3.getClass()).getSimpleName(), " updated data:"), StringsKt__StringsJVMKt.repeat(" ", 2)));
        sb.append('\n');
        sb.append(((ConnectionPool) this.matrix).buildDiff(obj2, obj3, new DiffContext(4, z)));
        return sb.toString();
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public ImapClientInfo clientInfo() {
        MigrationTo90 migrationTo90 = (MigrationTo90) this.matrix;
        return new ImapClientInfo((String) migrationTo90.clientInfoAppName$delegate.getValue(), (String) migrationTo90.clientInfoAppVersion$delegate.getValue());
    }

    public void deleteFile(long j) {
        File attachmentFile = getAttachmentFile(j);
        if (attachmentFile.exists() && !attachmentFile.delete() && ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.matrix)).getConfig().debugging.isDebugLoggingEnabled) {
            Log.w("Couldn't delete message part file: %s", attachmentFile.getAbsolutePath());
        }
    }

    public int evaluateAt(int i) {
        int[] iArr = (int[]) this.matrix;
        if (i == 0) {
            return getCoefficient(0);
        }
        if (i != 1) {
            int i2 = iArr[0];
            int length = iArr.length;
            for (int i3 = 1; i3 < length; i3++) {
                i2 = ((GenericGF) this.binarizer).multiply(i, i2) ^ iArr[i3];
            }
            return i2;
        }
        int i4 = 0;
        for (int i5 : iArr) {
            GenericGF genericGF = GenericGF.QR_CODE_FIELD_256;
            i4 ^= i5;
        }
        return i4;
    }

    public void expect(char c) {
        char readByte = (char) readByte();
        if (readByte == c) {
            return;
        }
        unexpectedCharacterError(readByte, true);
        throw null;
    }

    public HashSet findDisallowedContentProviderAuthorities() {
        Context context = (Context) this.binarizer;
        try {
            ProviderInfo[] providerInfoArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 136).providers;
            if (providerInfoArr == null) {
                providerInfoArr = new ProviderInfo[0];
            }
            HashSet hashSet = new HashSet(providerInfoArr.length);
            for (ProviderInfo providerInfo : providerInfoArr) {
                Bundle bundle = providerInfo.metaData;
                if (bundle == null || !bundle.getBoolean("de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS", false)) {
                    Collections.addAll(hashSet, providerInfo.authority.split(";"));
                }
            }
            return hashSet;
        } catch (PackageManager.NameNotFoundException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public void fixIdentities() {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.binarizer;
        String readValue = Adler32.readValue(sQLiteDatabase, "accountUuids");
        if (readValue == null || readValue.length() == 0) {
            return;
        }
        for (String str : StringsKt.split$default(readValue, new String[]{","}, 6)) {
            int i = 0;
            while (true) {
                String readValue2 = Adler32.readValue(sQLiteDatabase, str + ".email." + i);
                if (readValue2 == null) {
                    break;
                }
                String obj = StringsKt.trim(readValue2).toString();
                ((EmailAddressValidator) this.matrix).getClass();
                if (!EmailAddressValidator.isValidAddressOnly(obj)) {
                    obj = "please.edit@invalid";
                }
                Adler32.writeValue(sQLiteDatabase, str + ".email." + i, obj);
                i++;
            }
        }
    }

    @Override // com.fsck.k9.mail.store.imap.ImapResponseCallback
    public Object foundLiteral(ImapResponse imapResponse, FixedLengthInputStream fixedLengthInputStream) {
        Part part = (Part) this.binarizer;
        imapResponse.getClass();
        if (imapResponse.tag != null || !StateLayer.equalsIgnoreCase(imapResponse.get(1), "FETCH")) {
            return null;
        }
        String str = part.getHeader("Content-Transfer-Encoding")[0];
        str.getClass();
        String str2 = part.getHeader(UtilsKt.CONTENT_TYPE)[0];
        str2.getClass();
        return ((AsyncTimeout.Companion) this.matrix).createBody(str, str2, fixedLengthInputStream);
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer get(KClass kClass) {
        Object putIfAbsent;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.matrix;
        Class javaClass = Handshake.Companion.getJavaClass(kClass);
        Object obj = concurrentHashMap.get(javaClass);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (obj = new CacheEntry((KSerializer) ((Function1) this.binarizer).invoke(kClass))))) != null) {
            obj = putIfAbsent;
        }
        return ((CacheEntry) obj).serializer;
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* renamed from: get-gIAlu-s, reason: not valid java name */
    public Object mo949getgIAlus(KClass kClass, ArrayList arrayList) {
        Object failure;
        Object putIfAbsent;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.matrix;
        Class javaClass = Handshake.Companion.getJavaClass(kClass);
        Object obj = concurrentHashMap.get(javaClass);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (obj = new ParametrizedCacheEntry()))) != null) {
            obj = putIfAbsent;
        }
        ParametrizedCacheEntry parametrizedCacheEntry = (ParametrizedCacheEntry) obj;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new KTypeWrapper((KType) it.next()));
        }
        ConcurrentHashMap concurrentHashMap2 = parametrizedCacheEntry.serializers;
        Object obj2 = concurrentHashMap2.get(arrayList2);
        if (obj2 == null) {
            try {
                failure = (KSerializer) ((Function2) this.binarizer).invoke(kClass, arrayList);
            } catch (Throwable th) {
                failure = new Result.Failure(th);
            }
            kotlin.Result result = new kotlin.Result(failure);
            Object putIfAbsent2 = concurrentHashMap2.putIfAbsent(arrayList2, result);
            obj2 = putIfAbsent2 == null ? result : putIfAbsent2;
        }
        return ((kotlin.Result) obj2).value;
    }

    public File getAttachmentFile(long j) {
        return new File(((LocalStore.AnonymousClass1) this.binarizer).getAttachmentDirectory(), String.valueOf(j));
    }

    public BitMatrix getBlackMatrix() {
        int[] iArr;
        if (((BitMatrix) this.matrix) == null) {
            HybridBinarizer hybridBinarizer = (HybridBinarizer) this.binarizer;
            BitMatrix bitMatrix = hybridBinarizer.matrix;
            if (bitMatrix == null) {
                PlanarYUVLuminanceSource planarYUVLuminanceSource = hybridBinarizer.source;
                int i = planarYUVLuminanceSource.width;
                int i2 = planarYUVLuminanceSource.height;
                int i3 = 0;
                boolean z = true;
                if (i < 40 || i2 < 40) {
                    BitMatrix bitMatrix2 = new BitMatrix(i, i2);
                    if (hybridBinarizer.luminances.length < i) {
                        hybridBinarizer.luminances = new byte[i];
                    }
                    int i4 = 0;
                    while (true) {
                        iArr = hybridBinarizer.buckets;
                        if (i4 >= 32) {
                            break;
                        }
                        iArr[i4] = 0;
                        i4++;
                    }
                    for (int i5 = 1; i5 < 5; i5++) {
                        byte[] row = planarYUVLuminanceSource.getRow((i2 * i5) / 5, hybridBinarizer.luminances);
                        int i6 = (i * 4) / 5;
                        for (int i7 = i / 5; i7 < i6; i7++) {
                            int i8 = (row[i7] & 255) >> 3;
                            iArr[i8] = iArr[i8] + 1;
                        }
                    }
                    int length = iArr.length;
                    int i9 = 0;
                    int i10 = 0;
                    int i11 = 0;
                    for (int i12 = 0; i12 < length; i12++) {
                        int i13 = iArr[i12];
                        if (i13 > i9) {
                            i11 = i12;
                            i9 = i13;
                        }
                        if (i13 > i10) {
                            i10 = i13;
                        }
                    }
                    int i14 = 0;
                    int i15 = 0;
                    for (int i16 = 0; i16 < length; i16++) {
                        int i17 = i16 - i11;
                        int i18 = iArr[i16] * i17 * i17;
                        if (i18 > i15) {
                            i14 = i16;
                            i15 = i18;
                        }
                    }
                    if (i11 <= i14) {
                        int i19 = i11;
                        i11 = i14;
                        i14 = i19;
                    }
                    if (i11 - i14 <= length / 16) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    int i20 = i11 - 1;
                    int i21 = -1;
                    int i22 = i20;
                    while (i20 > i14) {
                        int i23 = i20 - i14;
                        int i24 = (i10 - iArr[i20]) * (i11 - i20) * i23 * i23;
                        if (i24 > i21) {
                            i22 = i20;
                            i21 = i24;
                        }
                        i20--;
                    }
                    int i25 = i22 << 3;
                    byte[] matrix = planarYUVLuminanceSource.getMatrix();
                    for (int i26 = 0; i26 < i2; i26++) {
                        int i27 = i26 * i;
                        for (int i28 = 0; i28 < i; i28++) {
                            if ((matrix[i27 + i28] & 255) < i25) {
                                bitMatrix2.set(i28, i26);
                            }
                        }
                    }
                    hybridBinarizer.matrix = bitMatrix2;
                } else {
                    byte[] matrix2 = planarYUVLuminanceSource.getMatrix();
                    int i29 = i >> 3;
                    if ((i & 7) != 0) {
                        i29++;
                    }
                    int i30 = i2 >> 3;
                    if ((i2 & 7) != 0) {
                        i30++;
                    }
                    int i31 = i2 - 8;
                    int i32 = i - 8;
                    int i33 = 2;
                    int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i30, i29);
                    int i34 = 0;
                    while (true) {
                        int i35 = 8;
                        if (i34 >= i30) {
                            break;
                        }
                        int i36 = i3;
                        int i37 = i34 << 3;
                        if (i37 > i31) {
                            i37 = i31;
                        }
                        boolean z2 = z;
                        int i38 = i36;
                        while (i38 < i29) {
                            int i39 = i33;
                            int i40 = i38 << 3;
                            if (i40 > i32) {
                                i40 = i32;
                            }
                            int i41 = (i37 * i) + i40;
                            int i42 = i36;
                            int i43 = i42;
                            int i44 = i43;
                            int i45 = 255;
                            while (i42 < i35) {
                                byte[] bArr = matrix2;
                                int i46 = i37;
                                int i47 = i36;
                                int i48 = i44;
                                int i49 = i45;
                                while (i47 < i35) {
                                    int i50 = i47;
                                    int i51 = bArr[i41 + i47] & 255;
                                    i43 += i51;
                                    if (i51 < i49) {
                                        i49 = i51;
                                    }
                                    if (i51 > i48) {
                                        i48 = i51;
                                    }
                                    i47 = i50 + 1;
                                    i35 = 8;
                                }
                                if (i48 - i49 > 24) {
                                    while (true) {
                                        i42++;
                                        i41 += i;
                                        if (i42 < 8) {
                                            int i52 = i36;
                                            for (int i53 = 8; i52 < i53; i53 = 8) {
                                                i43 += bArr[i41 + i52] & 255;
                                                i52++;
                                                i49 = i49;
                                            }
                                        }
                                    }
                                }
                                i42++;
                                i41 += i;
                                i45 = i49;
                                matrix2 = bArr;
                                i37 = i46;
                                i35 = 8;
                                i44 = i48;
                            }
                            byte[] bArr2 = matrix2;
                            int i54 = i37;
                            int i55 = i43 >> 6;
                            int i56 = i45;
                            if (i44 - i56 <= 24) {
                                i55 = i56 / 2;
                                if (i34 > 0 && i38 > 0) {
                                    int[] iArr3 = iArr2[i34 - 1];
                                    int i57 = i38 - 1;
                                    int i58 = (((iArr2[i34][i57] * 2) + iArr3[i38]) + iArr3[i57]) / 4;
                                    if (i56 < i58) {
                                        i55 = i58;
                                    }
                                }
                            }
                            iArr2[i34][i38] = i55;
                            i38++;
                            i33 = i39;
                            matrix2 = bArr2;
                            i37 = i54;
                            i35 = 8;
                        }
                        i34++;
                        i3 = i36;
                        z = z2;
                    }
                    byte[] bArr3 = matrix2;
                    int i59 = i3;
                    int i60 = i33;
                    BitMatrix bitMatrix3 = new BitMatrix(i, i2);
                    int i61 = i59;
                    while (i61 < i30) {
                        int i62 = i61 << 3;
                        if (i62 > i31) {
                            i62 = i31;
                        }
                        int min = i61 < i60 ? 2 : Math.min(i61, i30 - 3);
                        int i63 = i59;
                        while (i63 < i29) {
                            int i64 = i63 << 3;
                            if (i64 > i32) {
                                i64 = i32;
                            }
                            int min2 = i63 < 2 ? 2 : Math.min(i63, i29 - 3);
                            int i65 = i61;
                            int i66 = -2;
                            int i67 = i59;
                            for (int i68 = 2; i66 <= i68; i68 = 2) {
                                int[] iArr4 = iArr2[min + i66];
                                i67 = iArr4[min2 - 2] + iArr4[min2 - 1] + iArr4[min2] + iArr4[min2 + 1] + iArr4[min2 + 2] + i67;
                                i66++;
                            }
                            int i69 = i67 / 25;
                            int i70 = (i62 * i) + i64;
                            int i71 = i29;
                            int i72 = i59;
                            while (true) {
                                if (i72 < 8) {
                                    int i73 = i62;
                                    int i74 = i59;
                                    for (int i75 = 8; i74 < i75; i75 = 8) {
                                        int i76 = i74;
                                        if ((bArr3[i70 + i74] & 255) <= i69) {
                                            bitMatrix3.set(i64 + i76, i73 + i72);
                                        }
                                        i74 = i76 + 1;
                                    }
                                    i72++;
                                    i70 += i;
                                    i62 = i73;
                                }
                            }
                            i63++;
                            i61 = i65;
                            i29 = i71;
                        }
                        i60 = 2;
                        i61++;
                    }
                    hybridBinarizer.matrix = bitMatrix3;
                }
                bitMatrix = hybridBinarizer.matrix;
            }
            this.matrix = bitMatrix;
        }
        return (BitMatrix) this.matrix;
    }

    public int getCoefficient(int i) {
        return ((int[]) this.matrix)[(r1.length - 1) - i];
    }

    public int getDegree() {
        return ((int[]) this.matrix).length - 1;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public String getLogLabel() {
        return ((LegacyAccountDto) this.binarizer).uuid;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public boolean isExpungeImmediately() {
        return ((LegacyAccountDto) this.binarizer).getExpungePolicy() == Expunge.EXPUNGE_IMMEDIATELY;
    }

    @Override // com.fsck.k9.mail.store.imap.ImapStoreConfig
    public boolean isSubscribedFoldersOnly() {
        return ((LegacyAccountDto) this.binarizer).isSubscribedFoldersOnly();
    }

    public boolean isZero() {
        return ((int[]) this.matrix)[0] == 0;
    }

    public BinaryBitmap multiply(int i) {
        int[] iArr = (int[]) this.matrix;
        GenericGF genericGF = (GenericGF) this.binarizer;
        if (i == 0) {
            return genericGF.zero;
        }
        if (i == 1) {
            return this;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr2[i2] = genericGF.multiply(iArr[i2], i);
        }
        return new BinaryBitmap(genericGF, iArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        AccountId accountId;
        MessageListFragment messageListFragment = (MessageListFragment) this.matrix;
        Lazy lazy = messageListFragment.generalSettingsManager$delegate;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        boolean z = false;
        Object[] objArr = 0;
        int i = 1;
        if (itemId == R.id.delete) {
            ArrayList selectedMessages$1 = messageListFragment.getSelectedMessages$1();
            if (((DefaultGeneralSettingsManager) ((GeneralSettingsManager) lazy.getValue())).getConfig().interaction.isConfirmDelete) {
                messageListFragment.activeMessages = selectedMessages$1;
                messageListFragment.showDialog$2(R.id.dialog_confirm_delete);
            } else if (messageListFragment.showingThreadedList) {
                MessagingControllerWrapper messagingController$1 = messageListFragment.getMessagingController$1();
                messagingController$1.getClass();
                MessagingController messagingController = messagingController$1.messagingController;
                messagingController.actOnMessagesGroupedByAccountAndFolder(selectedMessages$1, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, messagingController));
            } else {
                MessagingControllerWrapper messagingController$12 = messageListFragment.getMessagingController$1();
                messagingController$12.getClass();
                MessagingController messagingController2 = messagingController$12.messagingController;
                messagingController2.actOnMessagesGroupedByAccountAndFolder(selectedMessages$1, new MessagingController$$ExternalSyntheticLambda9(messagingController2, z));
            }
        } else {
            if (itemId == R.id.mark_as_read) {
                MessageListFragment.access$setFlagForSelected(messageListFragment, Flag.SEEN, true);
                return true;
            }
            if (itemId == R.id.mark_as_unread) {
                MessageListFragment.access$setFlagForSelected(messageListFragment, Flag.SEEN, false);
                return true;
            }
            if (itemId == R.id.flag) {
                MessageListFragment.access$setFlagForSelected(messageListFragment, Flag.FLAGGED, true);
                return true;
            }
            if (itemId == R.id.unflag) {
                MessageListFragment.access$setFlagForSelected(messageListFragment, Flag.FLAGGED, false);
                return true;
            }
            if (itemId == R.id.select_all) {
                if (((AbstractCollection) messageListFragment.getStateSnapshot().getMessages()).isEmpty()) {
                    return true;
                }
                messageListFragment.getViewModel().event(MessageItemEvent$SelectAll.INSTANCE);
                return true;
            }
            if (itemId == R.id.archive) {
                ArrayList selectedMessages$12 = messageListFragment.getSelectedMessages$1();
                if (messageListFragment.checkCopyOrMovePossible(selectedMessages$12, MessageListFragment.FolderOperation.MOVE)) {
                    if (messageListFragment.showingThreadedList) {
                        Base64Util base64Util = messageListFragment.getMessagingController$1().messagingController.archiveOperations;
                        base64Util.getClass();
                        ((MessagingController) base64Util.alphabet).actOnMessagesGroupedByAccountAndFolder(selectedMessages$12, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, new ArchiveOperations$$ExternalSyntheticLambda2((Object) base64Util, (Object) "archiveThreads", (Object) new ArchiveOperations$$ExternalSyntheticLambda0(base64Util, i), (int) (objArr == true ? 1 : 0))));
                    } else {
                        messageListFragment.getMessagingController$1().messagingController.archiveOperations.archiveMessages(selectedMessages$12);
                    }
                }
            } else if (itemId == R.id.spam) {
                ArrayList selectedMessages$13 = messageListFragment.getSelectedMessages$1();
                if (((DefaultGeneralSettingsManager) ((GeneralSettingsManager) lazy.getValue())).getConfig().interaction.isConfirmSpam) {
                    messageListFragment.activeMessages = selectedMessages$13;
                    messageListFragment.showDialog$2(R.id.dialog_confirm_spam);
                } else {
                    messageListFragment.onSpamConfirmed$1(selectedMessages$13);
                }
            } else if (itemId == R.id.move) {
                messageListFragment.onMove$1(messageListFragment.getSelectedMessages$1());
            } else if (itemId == R.id.move_to_drafts) {
                ArrayList selectedMessages$14 = messageListFragment.getSelectedMessages$1();
                LegacyAccount legacyAccount = messageListFragment.account;
                if (legacyAccount != null && (accountId = legacyAccount.id) != null) {
                    MessagingControllerWrapper messagingController$13 = messageListFragment.getMessagingController$1();
                    FolderInfoHolder folderInfoHolder = messageListFragment.currentFolder;
                    folderInfoHolder.getClass();
                    long j = folderInfoHolder.databaseId;
                    messagingController$13.getClass();
                    LegacyAccountDto accountDtoOrThrow = messagingController$13.getAccountDtoOrThrow(accountId);
                    MessagingController messagingController3 = messagingController$13.messagingController;
                    messagingController3.putBackground("moveToDrafts", new MessageLoaderHelper$4$$ExternalSyntheticLambda0(messagingController3, accountDtoOrThrow, j, selectedMessages$14, 3));
                }
                messageListFragment.activeMessages = null;
            } else {
                if (itemId != R.id.copy) {
                    return false;
                }
                messageListFragment.onCopy$1(messageListFragment.getSelectedMessages$1());
            }
        }
        actionMode.finish();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a2  */
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r18, androidx.core.view.WindowInsetsCompat r19) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            java.lang.Object r3 = r0.binarizer
            com.fsck.k9.mailstore.LocalFolder$8 r3 = (com.fsck.k9.mailstore.LocalFolder.AnonymousClass8) r3
            java.lang.Object r0 = r0.matrix
            com.bumptech.glide.load.engine.cache.MemorySizeCalculator r0 = (com.bumptech.glide.load.engine.cache.MemorySizeCalculator) r0
            int r4 = r0.bitmapPoolSize
            int r5 = r0.memoryCacheSize
            int r0 = r0.arrayPoolSize
            androidx.core.view.WindowInsetsCompat$Impl r6 = r2.mImpl
            r7 = 519(0x207, float:7.27E-43)
            androidx.core.graphics.Insets r7 = r6.getInsets(r7)
            r8 = 32
            androidx.core.graphics.Insets r6 = r6.getInsets(r8)
            java.lang.Object r8 = r3.this$0
            com.google.android.material.bottomsheet.BottomSheetBehavior r8 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r8
            int r9 = r7.top
            int r10 = r7.right
            int r11 = r7.left
            r8.insetTop = r9
            int r9 = r1.getLayoutDirection()
            r13 = 1
            if (r9 != r13) goto L37
            r9 = r13
            goto L38
        L37:
            r9 = 0
        L38:
            int r14 = r1.getPaddingBottom()
            int r15 = r1.getPaddingLeft()
            int r16 = r1.getPaddingRight()
            boolean r12 = r8.paddingBottomSystemWindowInsets
            if (r12 == 0) goto L4f
            int r14 = r2.getSystemWindowInsetBottom()
            r8.insetBottom = r14
            int r14 = r14 + r0
        L4f:
            boolean r0 = r8.paddingLeftSystemWindowInsets
            if (r0 == 0) goto L5a
            if (r9 == 0) goto L57
            r0 = r5
            goto L58
        L57:
            r0 = r4
        L58:
            int r15 = r0 + r11
        L5a:
            boolean r0 = r8.paddingRightSystemWindowInsets
            if (r0 == 0) goto L64
            if (r9 == 0) goto L61
            goto L62
        L61:
            r4 = r5
        L62:
            int r16 = r4 + r10
        L64:
            r0 = r16
            android.view.ViewGroup$LayoutParams r4 = r1.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r4 = (android.view.ViewGroup.MarginLayoutParams) r4
            boolean r5 = r8.marginLeftSystemWindowInsets
            if (r5 == 0) goto L78
            int r5 = r4.leftMargin
            if (r5 == r11) goto L78
            r4.leftMargin = r11
            r5 = r13
            goto L79
        L78:
            r5 = 0
        L79:
            boolean r9 = r8.marginRightSystemWindowInsets
            if (r9 == 0) goto L84
            int r9 = r4.rightMargin
            if (r9 == r10) goto L84
            r4.rightMargin = r10
            r5 = r13
        L84:
            boolean r9 = r8.marginTopSystemWindowInsets
            if (r9 == 0) goto L91
            int r9 = r4.topMargin
            int r7 = r7.top
            if (r9 == r7) goto L91
            r4.topMargin = r7
            goto L92
        L91:
            r13 = r5
        L92:
            if (r13 == 0) goto L97
            r1.setLayoutParams(r4)
        L97:
            int r4 = r1.getPaddingTop()
            r1.setPadding(r15, r4, r0, r14)
            boolean r0 = r3.val$includeDeleted
            if (r0 == 0) goto La6
            int r1 = r6.bottom
            r8.gestureInsetBottom = r1
        La6:
            if (r12 != 0) goto Lac
            if (r0 == 0) goto Lab
            goto Lac
        Lab:
            return r2
        Lac:
            r8.updatePeekHeight()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.BinaryBitmap.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat):androidx.core.view.WindowInsetsCompat");
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        menu.getClass();
        actionMode.getMenuInflater().inflate(R.menu.message_list_context_menu, menu);
        setContextCapabilities$1(((MessageListFragment) this.matrix).account, menu);
        return true;
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        actionMode.getClass();
        MessageListFragment messageListFragment = (MessageListFragment) this.matrix;
        messageListFragment.actionMode = null;
        this.binarizer = null;
        messageListFragment.getViewModel().event(MessageItemEvent$DeselectAll.INSTANCE);
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        menu.getClass();
        this.binarizer = menu.findItem(R.id.select_all);
        menu.findItem(R.id.mark_as_read);
        menu.findItem(R.id.mark_as_unread);
        menu.findItem(R.id.flag);
        menu.findItem(R.id.unflag);
        MessageListFragment messageListFragment = (MessageListFragment) this.matrix;
        if (!messageListFragment.isSingleAccountMode) {
            ImmutableList messages = messageListFragment.getStateSnapshot().getMessages();
            ArrayList arrayList = new ArrayList();
            for (Object obj : messages) {
                if (((MessageItemUi) obj).selected) {
                    arrayList.add(obj);
                }
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(((MessageItemUi) it.next()).account.id.value.toString());
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                LegacyAccount account = messageListFragment.getAccountManager$2().getAccount((String) it2.next());
                if (account != null) {
                    arrayList2.add(account);
                }
            }
            ViewSizeResolver.CC.m(menu, R.id.move, true, R.id.copy, true);
            ViewSizeResolver.CC.m(menu, R.id.archive, false, R.id.spam, false);
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                setContextCapabilities$1((LegacyAccount) it3.next(), menu);
            }
        }
        return true;
    }

    public InputStream openInputStream(Uri uri) {
        boolean contains;
        if (uri == null) {
            Regex$$ExternalSyntheticBUOutline0.m("Argument 'uri' must not be null");
            return null;
        }
        String scheme = uri.getScheme();
        if ("content".equals(scheme)) {
            String authority = uri.getAuthority();
            BinaryBitmap binaryBitmap = (BinaryBitmap) this.matrix;
            synchronized (binaryBitmap) {
                try {
                    if (((HashSet) binaryBitmap.matrix) == null) {
                        binaryBitmap.matrix = binaryBitmap.findDisallowedContentProviderAuthorities();
                    }
                    contains = ((HashSet) binaryBitmap.matrix).contains(authority);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (contains) {
                throw new FileNotFoundException(CameraDevices$CC.m("content URI is owned by the application itself. Content provider is not explicitly allowed: ", authority));
            }
        }
        if (!coil3.util.UtilsKt.SCHEME_FILE.equals(scheme)) {
            return ((ContentResolver) this.binarizer).openInputStream(uri);
        }
        ParcelFileDescriptor open = ParcelFileDescriptor.open(new File(uri.getPath()), 268435456);
        try {
            if (Os.fstat(open.getFileDescriptor()).st_uid == Process.myUid()) {
                throw new FileNotFoundException("File is owned by the application itself");
            }
            try {
                return new AssetFileDescriptor(open, 0L, -1L).createInputStream();
            } catch (IOException unused) {
                throw new FileNotFoundException("Unable to create stream");
            }
        } catch (ErrnoException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseEhloLine(java.lang.String r13, java.util.LinkedHashMap r14) {
        /*
            r12 = this;
            java.lang.String r0 = " "
            java.lang.String[] r0 = new java.lang.String[]{r0}
            r1 = 6
            java.util.List r0 = kotlin.text.StringsKt.split$default(r13, r0, r1)
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r0.get(r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            java.lang.String r3 = (java.lang.String) r3     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            java.util.Locale r4 = java.util.Locale.ROOT     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            java.lang.String r3 = r3.toUpperCase(r4)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            r3.getClass()     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            char r4 = r3.charAt(r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            r5 = 91
            r6 = 65
            r7 = 58
            r8 = 48
            if (r8 > r4) goto L2d
            if (r4 >= r7) goto L2d
            goto L31
        L2d:
            if (r6 > r4) goto L33
            if (r4 >= r5) goto L33
        L31:
            r4 = r1
            goto L34
        L33:
            r4 = r2
        L34:
            r9 = 0
            if (r4 == 0) goto La6
            r4 = r2
        L38:
            int r10 = r3.length()     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            if (r4 >= r10) goto L57
            char r10 = r3.charAt(r4)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            if (r8 > r10) goto L47
            if (r10 >= r7) goto L47
            goto L4b
        L47:
            if (r6 > r10) goto L4d
            if (r10 >= r5) goto L4d
        L4b:
            r11 = r1
            goto L4e
        L4d:
            r11 = r2
        L4e:
            if (r11 != 0) goto L54
            r11 = 45
            if (r10 != r11) goto La6
        L54:
            int r4 = r4 + 1
            goto L38
        L57:
            int r4 = r0.size()     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            int r4 = r4 - r1
            if (r1 > r4) goto L92
            r5 = r1
        L5f:
            java.lang.Object r6 = r0.get(r5)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            java.lang.String r6 = (java.lang.String) r6     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            int r7 = r6.length()     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            if (r7 == 0) goto L8c
            r7 = r2
        L6c:
            int r8 = r6.length()     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            if (r7 >= r8) goto L87
            char r8 = r6.charAt(r7)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            r10 = 33
            if (r10 > r8) goto L81
            r10 = 127(0x7f, float:1.78E-43)
            if (r8 >= r10) goto L81
            int r7 = r7 + 1
            goto L6c
        L81:
            java.lang.String r14 = "EHLO parameter contains invalid character"
            r12.parserError(r14, r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            throw r9     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
        L87:
            if (r5 == r4) goto L92
            int r5 = r5 + 1
            goto L5f
        L8c:
            java.lang.String r14 = "EHLO parameter must not be empty"
            r12.parserError(r14, r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            throw r9     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
        L92:
            java.util.List r0 = kotlin.collections.CollectionsKt.drop(r1, r0)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            boolean r4 = r14.containsKey(r3)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            if (r4 != 0) goto La0
            r14.put(r3, r0)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            return
        La0:
            java.lang.String r14 = "Same EHLO keyword present in more than one response line"
            r12.parserError(r14, r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            throw r9     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
        La6:
            java.lang.String r14 = "EHLO keyword contains invalid character"
            r12.parserError(r14, r2)     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
            throw r9     // Catch: com.fsck.k9.mail.transport.smtp.SmtpResponseParserException -> Lac
        Lac:
            java.lang.Object[] r12 = new java.lang.Object[r1]
            r12[r2] = r13
            java.lang.String r13 = "Ignoring EHLO keyword line: %s"
            com.bumptech.glide.GlideBuilder$1.log(r13, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.BinaryBitmap.parseEhloLine(java.lang.String, java.util.LinkedHashMap):void");
    }

    public void parserError(String str, boolean z) {
        if (z && K9MailLib.debugStatus.enabled()) {
            GlideBuilder$1.log("SMTP response data on parser error:\n%s", StringsKt__StringsJVMKt.replace$default(((Buffer) this.matrix).readUtf8(), "\r\n", "\n"));
        }
        throw new SmtpResponseParserException(str);
    }

    public void persist(EventRecodingLogger eventRecodingLogger) {
        HashMap hashMap = (HashMap) eventRecodingLogger.name;
        K9StorageEditor k9StorageEditor = (K9StorageEditor) this.matrix;
        ArrayList arrayList = k9StorageEditor.removals;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            SQLiteStatement sQLiteStatement = (SQLiteStatement) eventRecodingLogger.logger;
            sQLiteStatement.bindString(1, str);
            sQLiteStatement.executeUpdateDelete();
            sQLiteStatement.clearBindings();
            hashMap.remove(str);
        }
        for (Map.Entry entry : k9StorageEditor.changes.entrySet()) {
            String str2 = (String) entry.getKey();
            String str3 = (String) entry.getValue();
            String str4 = (String) ((HashMap) this.binarizer).get(str2);
            if (arrayList.contains(str2) || !str3.equals(str4)) {
                SQLiteStatement sQLiteStatement2 = (SQLiteStatement) eventRecodingLogger.eventQueue;
                sQLiteStatement2.bindString(1, str2);
                sQLiteStatement2.bindString(2, str3);
                sQLiteStatement2.execute();
                sQLiteStatement2.clearBindings();
                hashMap.put(str2, str3);
            }
        }
    }

    public int readByte() {
        int read = ((PeekableInputStream) this.binarizer).read();
        if (read != -1) {
            ((Buffer) this.matrix).m1053writeByte(read);
            return read;
        }
        parserError("Unexpected end of stream", true);
        throw null;
    }

    public char readChar(BufferedSource bufferedSource) {
        if (!bufferedSource.exhausted()) {
            return (char) bufferedSource.readByte();
        }
        parserError("Unexpected end of stream", false);
        throw null;
    }

    public int readDigit() {
        char readByte = (char) readByte();
        if ('0' <= readByte && readByte < ':') {
            return readByte - '0';
        }
        unexpectedCharacterError(readByte, true);
        throw null;
    }

    public EnhancedStatusCode readEnhancedStatusCode(BufferedSource bufferedSource, int i) {
        StatusCodeClass statusCodeClass;
        char readChar = readChar(bufferedSource);
        if (readChar == '2') {
            statusCodeClass = StatusCodeClass.SUCCESS;
        } else if (readChar == '4') {
            statusCodeClass = StatusCodeClass.PERSISTENT_TRANSIENT_FAILURE;
        } else {
            if (readChar != '5') {
                unexpectedCharacterError(readChar, false);
                throw null;
            }
            statusCodeClass = StatusCodeClass.PERMANENT_FAILURE;
        }
        if (i < 0 || i >= 10) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Int ", " is not a decimal digit"));
            return null;
        }
        if (readChar != ((char) (i + 48))) {
            parserError("Reply code doesn't match status code class: " + i + " != " + readChar, false);
            throw null;
        }
        char readChar2 = readChar(bufferedSource);
        if (readChar2 != '.') {
            unexpectedCharacterError(readChar2, false);
            throw null;
        }
        int readOneToThreeDigitNumber = readOneToThreeDigitNumber(bufferedSource);
        char readChar3 = readChar(bufferedSource);
        if (readChar3 != '.') {
            unexpectedCharacterError(readChar3, false);
            throw null;
        }
        int readOneToThreeDigitNumber2 = readOneToThreeDigitNumber(bufferedSource);
        char readChar4 = readChar(bufferedSource);
        if (readChar4 == ' ') {
            return new EnhancedStatusCode(statusCodeClass, readOneToThreeDigitNumber, readOneToThreeDigitNumber2);
        }
        unexpectedCharacterError(readChar4, false);
        throw null;
    }

    public int readOneToThreeDigitNumber(BufferedSource bufferedSource) {
        char readChar = readChar(bufferedSource);
        if ('0' > readChar || readChar >= ':') {
            unexpectedCharacterError(readChar, false);
            throw null;
        }
        int i = readChar - '0';
        for (int i2 = 0; i2 < 2; i2++) {
            char readChar2 = readChar(bufferedSource.peek());
            if ('0' <= readChar2 && readChar2 < ':') {
                int i3 = i * 10;
                char readChar3 = readChar(bufferedSource);
                if ('0' > readChar3 || readChar3 >= ':') {
                    unexpectedCharacterError(readChar3, false);
                    throw null;
                }
                i = (readChar3 - '0') + i3;
            }
        }
        return i;
    }

    public int readReplyCode() {
        int readDigit = readDigit();
        if (2 > readDigit || readDigit >= 6) {
            parserError("Unsupported 1st reply code digit: " + readDigit, true);
            throw null;
        }
        int i = readDigit * 100;
        int readDigit2 = readDigit();
        if (readDigit2 < 0 || readDigit2 >= 6) {
            GlideBuilder$1.log("2nd digit of reply code outside of specified range (0..5): %d", Integer.valueOf(readDigit2));
        }
        return readDigit() + (readDigit2 * 10) + i;
    }

    public SmtpResponse readResponseAfterReplyCode(int i, boolean z) {
        int readReplyCode;
        ArrayList arrayList = new ArrayList();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        do {
            int peek = ((PeekableInputStream) this.binarizer).peek();
            if (peek == -1) {
                parserError("Unexpected end of stream", true);
                throw null;
            }
            char c = (char) peek;
            if (c == '\r') {
                expect('\r');
                expect('\n');
                return new SmtpResponse(i, (EnhancedStatusCode) ref$ObjectRef.element, arrayList);
            }
            if (c == ' ') {
                expect(' ');
                Buffer readUntilEndOfLine = readUntilEndOfLine();
                if (z) {
                    ref$ObjectRef.element = readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(readUntilEndOfLine, this, ref$BooleanRef, ref$ObjectRef, i);
                }
                String readTextString = readTextString(readUntilEndOfLine);
                if (readTextString.length() > 0) {
                    arrayList.add(readTextString);
                }
                expect('\r');
                expect('\n');
                return new SmtpResponse(i, (EnhancedStatusCode) ref$ObjectRef.element, arrayList);
            }
            if (c != '-') {
                unexpectedCharacterError(c, true);
                throw null;
            }
            expect('-');
            Buffer readUntilEndOfLine2 = readUntilEndOfLine();
            if (z) {
                ref$ObjectRef.element = readResponseAfterReplyCode$maybeReadAndCompareEnhancedStatusCode(readUntilEndOfLine2, this, ref$BooleanRef, ref$ObjectRef, i);
            }
            arrayList.add(readTextString(readUntilEndOfLine2));
            expect('\r');
            expect('\n');
            readReplyCode = readReplyCode();
        } while (readReplyCode == i);
        parserError(Modifier.CC.m(i, readReplyCode, "Multi-line response with reply codes not matching: ", " != "), true);
        throw null;
    }

    public String readTextString(Buffer buffer) {
        String readUtf8 = buffer.readUtf8();
        if (readUtf8.length() == 0) {
            GlideBuilder$1.log("'textstring' expected, but CR found instead", new Object[0]);
            return readUtf8;
        }
        for (int i = 0; i < readUtf8.length(); i++) {
            char charAt = readUtf8.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                GlideBuilder$1.log("Text contains characters not allowed in 'textstring'", new Object[0]);
                return readUtf8;
            }
        }
        return readUtf8;
    }

    public Buffer readUntilEndOfLine() {
        Buffer buffer = new Buffer();
        while (true) {
            int peek = ((PeekableInputStream) this.binarizer).peek();
            if (peek == -1) {
                parserError("Unexpected end of stream", true);
                throw null;
            }
            if (((char) peek) == '\r') {
                return buffer;
            }
            buffer.m1053writeByte(readByte());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (r8.isSpecialFolder$1(r0 != null ? r0.archiveFolderId : null) != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContextCapabilities$1(net.thunderbird.core.android.account.LegacyAccount r9, android.view.Menu r10) {
        /*
            r8 = this;
            java.lang.Object r8 = r8.matrix
            com.fsck.k9.ui.messagelist.MessageListFragment r8 = (com.fsck.k9.ui.messagelist.MessageListFragment) r8
            boolean r0 = r8.isSingleAccountMode
            r1 = 2131296965(0x7f0902c5, float:1.8211862E38)
            r2 = 2131296604(0x7f09015c, float:1.821113E38)
            r3 = 2131297253(0x7f0903e5, float:1.8212446E38)
            r4 = 2131296385(0x7f090081, float:1.8210685E38)
            r5 = 1
            r6 = 0
            if (r0 == 0) goto La3
            if (r9 != 0) goto L1a
            goto La3
        L1a:
            net.thunderbird.feature.account.AccountId r0 = r9.id
            boolean r7 = r8.isOutbox()
            if (r7 == 0) goto L49
            r8 = 2131296878(0x7f09026e, float:1.8211685E38)
            r0 = 2131296879(0x7f09026f, float:1.8211687E38)
            coil3.size.ViewSizeResolver.CC.m(r10, r8, r6, r0, r6)
            coil3.size.ViewSizeResolver.CC.m(r10, r4, r6, r2, r6)
            r8 = 2131296753(0x7f0901f1, float:1.8211432E38)
            r0 = 2131297382(0x7f090466, float:1.8212707E38)
            coil3.size.ViewSizeResolver.CC.m(r10, r8, r6, r0, r6)
            coil3.size.ViewSizeResolver.CC.m(r10, r3, r6, r1, r6)
            java.lang.Long r8 = r9.draftsFolderId
            if (r8 == 0) goto L48
            r8 = 2131296966(0x7f0902c6, float:1.8211864E38)
            android.view.MenuItem r8 = r10.findItem(r8)
            r8.setVisible(r5)
        L48:
            return
        L49:
            com.fsck.k9.controller.MessagingControllerWrapper r5 = r8.getMessagingController$1()
            boolean r5 = r5.isCopyCapable(r0)
            if (r5 != 0) goto L5a
            android.view.MenuItem r2 = r10.findItem(r2)
            r2.setVisible(r6)
        L5a:
            com.fsck.k9.controller.MessagingControllerWrapper r2 = r8.getMessagingController$1()
            boolean r0 = r2.isMoveCapable(r0)
            if (r0 != 0) goto L6f
            coil3.size.ViewSizeResolver.CC.m(r10, r1, r6, r4, r6)
            android.view.MenuItem r8 = r10.findItem(r3)
            r8.setVisible(r6)
            return
        L6f:
            boolean r0 = r9.hasArchiveFolder()
            r1 = 0
            if (r0 == 0) goto L84
            net.thunderbird.core.android.account.LegacyAccount r0 = r8.account
            if (r0 == 0) goto L7d
            java.lang.Long r0 = r0.archiveFolderId
            goto L7e
        L7d:
            r0 = r1
        L7e:
            boolean r0 = r8.isSpecialFolder$1(r0)
            if (r0 == 0) goto L8b
        L84:
            android.view.MenuItem r0 = r10.findItem(r4)
            r0.setVisible(r6)
        L8b:
            java.lang.Long r9 = r9.spamFolderId
            if (r9 == 0) goto L9b
            net.thunderbird.core.android.account.LegacyAccount r9 = r8.account
            if (r9 == 0) goto L95
            java.lang.Long r1 = r9.spamFolderId
        L95:
            boolean r8 = r8.isSpecialFolder$1(r1)
            if (r8 == 0) goto Lc2
        L9b:
            android.view.MenuItem r8 = r10.findItem(r3)
            r8.setVisible(r6)
            return
        La3:
            coil3.size.ViewSizeResolver.CC.m(r10, r1, r6, r2, r6)
            if (r9 == 0) goto Lb5
            boolean r8 = r9.hasArchiveFolder()
            if (r8 != r5) goto Lb5
            android.view.MenuItem r8 = r10.findItem(r4)
            r8.setVisible(r5)
        Lb5:
            if (r9 == 0) goto Lc2
            java.lang.Long r8 = r9.spamFolderId
            if (r8 == 0) goto Lc2
            android.view.MenuItem r8 = r10.findItem(r3)
            r8.setVisible(r5)
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.BinaryBitmap.setContextCapabilities$1(net.thunderbird.core.android.account.LegacyAccount, android.view.Menu):void");
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                try {
                    return getBlackMatrix().toString();
                } catch (NotFoundException unused) {
                    return "";
                }
            case 20:
                if (isZero()) {
                    return "0";
                }
                StringBuilder sb = new StringBuilder(getDegree() * 8);
                for (int degree = getDegree(); degree >= 0; degree--) {
                    int coefficient = getCoefficient(degree);
                    if (coefficient != 0) {
                        if (coefficient < 0) {
                            if (degree == getDegree()) {
                                sb.append("-");
                            } else {
                                sb.append(" - ");
                            }
                            coefficient = -coefficient;
                        } else if (sb.length() > 0) {
                            sb.append(" + ");
                        }
                        if (degree == 0 || coefficient != 1) {
                            GenericGF genericGF = (GenericGF) this.binarizer;
                            if (coefficient == 0) {
                                genericGF.getClass();
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                                return null;
                            }
                            int i = genericGF.logTable[coefficient];
                            if (i == 0) {
                                sb.append('1');
                            } else if (i == 1) {
                                sb.append('a');
                            } else {
                                sb.append("a^");
                                sb.append(i);
                            }
                        }
                        if (degree != 0) {
                            if (degree == 1) {
                                sb.append('x');
                            } else {
                                sb.append("x^");
                                sb.append(degree);
                            }
                        }
                    }
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void unexpectedCharacterError(char c, boolean z) {
        if ('!' > c || c >= 127) {
            parserError("Unexpected character: (" + ((int) c) + ")", z);
            throw null;
        }
        parserError("Unexpected character: " + c + " (" + ((int) c) + ")", z);
        throw null;
    }

    public void writeServerSettings(K9StorageEditor k9StorageEditor, String str, ValidatedSettings$Server validatedSettings$Server) {
        GeneralSettingsManager generalSettingsManager = (GeneralSettingsManager) this.matrix;
        Map map = validatedSettings$Server.settings;
        Object obj = map.get("host");
        obj.getClass();
        String str2 = (String) obj;
        Object obj2 = map.get("port");
        obj2.getClass();
        int intValue = ((Integer) obj2).intValue();
        Object obj3 = map.get("connectionSecurity");
        obj3.getClass();
        ConnectionSecurity valueOf = ConnectionSecurity.valueOf((String) obj3);
        Object obj4 = map.get("authenticationType");
        obj4.getClass();
        AuthType valueOf2 = AuthType.valueOf((String) obj4);
        Object obj5 = map.get("username");
        obj5.getClass();
        String str3 = (String) obj5;
        Object obj6 = map.get("password");
        String str4 = obj6 instanceof String ? (String) obj6 : null;
        if (valueOf2 == AuthType.XOAUTH2) {
            str4 = "";
        }
        String str5 = str4;
        Object obj7 = map.get("clientCertificateAlias");
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager;
        IntRectKt.putStringWithLogging(k9StorageEditor, str, ((ServerSettingsDtoSerializer) this.binarizer).adapter.toJson(new ServerSettings(validatedSettings$Server.type, str2, intValue, valueOf, valueOf2, str3, str5, obj7 instanceof String ? (String) obj7 : null, validatedSettings$Server.extras)), defaultGeneralSettingsManager.getConfig().debugging.isDebugLoggingEnabled, defaultGeneralSettingsManager.getConfig().debugging.isSensitiveLoggingEnabled);
    }

    public /* synthetic */ BinaryBitmap(int i, Object obj) {
        this.$r8$classId = i;
        this.binarizer = obj;
    }

    public /* synthetic */ BinaryBitmap(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.binarizer = obj;
        this.matrix = obj2;
    }

    public BinaryBitmap(LockableDatabase lockableDatabase, LocalStore.AnonymousClass1 anonymousClass1) {
        this.$r8$classId = 13;
        lockableDatabase.getClass();
        this.binarizer = lockableDatabase;
        this.matrix = anonymousClass1;
    }

    public BinaryBitmap(Part part, AsyncTimeout.Companion companion) {
        this.$r8$classId = 2;
        part.getClass();
        this.binarizer = part;
        this.matrix = companion;
    }

    public BinaryBitmap(LockableDatabase lockableDatabase, AccountId accountId) {
        this.$r8$classId = 12;
        lockableDatabase.getClass();
        accountId.getClass();
        this.binarizer = lockableDatabase;
        this.matrix = accountId;
    }

    public BinaryBitmap(SQLiteDatabase sQLiteDatabase, Adler32 adler32, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 10:
                this.binarizer = sQLiteDatabase;
                this.matrix = new EmailAddressValidator();
                break;
            default:
                this.binarizer = sQLiteDatabase;
                this.matrix = new ServerSettingsDtoSerializer();
                break;
        }
    }

    public BinaryBitmap(LockableDatabase lockableDatabase, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        this.$r8$classId = 14;
        lockableDatabase.getClass();
        this.binarizer = lockableDatabase;
        this.matrix = defaultLocalMessageUidPrefixProvider;
    }

    public BinaryBitmap(GlideBuilder$1 glideBuilder$1, PeekableInputStream peekableInputStream) {
        this.$r8$classId = 4;
        this.binarizer = peekableInputStream;
        this.matrix = new Buffer();
    }

    public /* synthetic */ BinaryBitmap(int i) {
        this.$r8$classId = i;
    }

    public BinaryBitmap(Set set, List list) {
        this.$r8$classId = 3;
        this.binarizer = set;
        this.matrix = list;
        if (set.isEmpty() && list.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Must have at least one ID");
            throw null;
        }
    }

    public BinaryBitmap(K9StorageEditor k9StorageEditor, HashMap hashMap, HashMap hashMap2) {
        this.$r8$classId = 6;
        this.matrix = k9StorageEditor;
        this.binarizer = hashMap;
    }

    public BinaryBitmap(ArrayList arrayList, ArrayList arrayList2) {
        this.$r8$classId = 1;
        this.binarizer = (Address[]) arrayList.toArray(new Address[arrayList.size()]);
        this.matrix = (Address[]) arrayList2.toArray(new Address[arrayList2.size()]);
    }

    public BinaryBitmap(Address[] addressArr) {
        this.$r8$classId = 1;
        this.binarizer = addressArr;
        this.matrix = new Address[0];
    }

    public BinaryBitmap(Context context) {
        this.$r8$classId = 25;
        this.binarizer = context.getContentResolver();
        this.matrix = new BinaryBitmap(24, context);
    }

    public BinaryBitmap(Function1 function1) {
        this.$r8$classId = 27;
        this.binarizer = function1;
        this.matrix = new ConcurrentHashMap();
    }

    public BinaryBitmap(Function2 function2) {
        this.$r8$classId = 28;
        this.binarizer = function2;
        this.matrix = new ConcurrentHashMap();
    }

    public BinaryBitmap(JobSupport jobSupport) {
        this.$r8$classId = 26;
        JobSupport$onJoin$1 jobSupport$onJoin$1 = JobSupport$onJoin$1.INSTANCE;
        this.binarizer = jobSupport;
        this.matrix = SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1.INSTANCE;
    }

    public BinaryBitmap(MessageListFragment messageListFragment) {
        this.$r8$classId = 16;
        this.matrix = messageListFragment;
    }

    public BinaryBitmap() {
        this.$r8$classId = 17;
        this.binarizer = new Rect();
        this.matrix = new Rect();
    }
}
