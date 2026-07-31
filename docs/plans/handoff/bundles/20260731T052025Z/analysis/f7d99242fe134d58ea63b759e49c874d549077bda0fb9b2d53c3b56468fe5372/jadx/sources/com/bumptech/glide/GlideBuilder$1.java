package com.bumptech.glide;

import android.content.Context;
import android.content.Intent;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import androidx.compose.material3.FabPlacement;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.fsck.k9.autocrypt.AutocryptHeader;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.jcraft.jzlib.Adler32;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.UIntArray;
import kotlin.enums.EnumEntriesList;
import kotlin.text.StringsKt__StringsJVMKt;
import net.thunderbird.core.android.account.DeletePolicy;
import net.thunderbird.core.logging.legacy.Log;
import okio.ByteString;
import org.apache.hc.core5.util.CharArrayBuffer;
import org.openintents.openpgp.AutocryptPeerUpdate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideBuilder$1 implements ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl, CreationExtras.Key, ProfileInstaller$DiagnosticsCallback, VideoDecoder.MediaInitializer, RequestManagerRetriever.RequestManagerFactory {
    public static GlideBuilder$1 DEFAULT;

    public static boolean addAutocryptPeerUpdateToIntentIfPresent(MimeMessage mimeMessage, Intent intent) {
        ByteString byteString;
        mimeMessage.getClass();
        String[] header = mimeMessage.mHeader.getHeader("Autocrypt");
        if (header == null) {
            header = new String[0];
        }
        List asList = Arrays.asList(header);
        asList.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = asList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            str.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap(JisSupport.getAllHeaderParameters(str));
            String str2 = (String) linkedHashMap.remove("type");
            String str3 = (String) linkedHashMap.remove("keydata");
            String str4 = (String) linkedHashMap.remove("addr");
            String str5 = (String) linkedHashMap.remove("prefer-encrypt");
            if (str3 != null) {
                ByteString byteString2 = ByteString.EMPTY;
                byteString = Adler32.decodeBase64(str3);
            } else {
                byteString = null;
            }
            if (str2 != null && !str2.equals(DiskLruCache.VERSION)) {
                Log.e("AutocryptHeaderParser", "Unsupported type parameter: ".concat(str2));
            } else if (str3 == null) {
                Log.e("AutocryptHeaderParser", "Missing key parameter");
            } else if (byteString == null) {
                Log.e("AutocryptHeaderParser", "Error parsing base64 data");
            } else if (str4 == null) {
                Log.e("AutocryptHeaderParser", "No 'to' header found");
            } else {
                Set keySet = linkedHashMap.keySet();
                if (!(keySet instanceof Collection) || !keySet.isEmpty()) {
                    Iterator it2 = keySet.iterator();
                    while (it2.hasNext()) {
                        if (!StringsKt__StringsJVMKt.startsWith((String) it2.next(), "_", false)) {
                            break;
                        }
                    }
                }
                r5 = new AutocryptHeader(linkedHashMap, str4, byteString.toByteArray(), "mutual".equalsIgnoreCase(str5));
            }
            if (r5 != null) {
                arrayList.add(r5);
            }
        }
        AutocryptHeader autocryptHeader = (AutocryptHeader) (arrayList.size() == 1 ? arrayList.get(0) : null);
        if (autocryptHeader != null) {
            String str6 = mimeMessage.getFrom()[0].address;
            if (autocryptHeader.addr.equalsIgnoreCase(str6)) {
                Date sentDate = mimeMessage.getSentDate();
                Date date = mimeMessage.mInternalDate;
                if (!sentDate.before(date)) {
                    sentDate = date;
                }
                AutocryptPeerUpdate autocryptPeerUpdate = new AutocryptPeerUpdate(autocryptHeader.keyData, sentDate, autocryptHeader.isPreferEncryptMutual ? AutocryptPeerUpdate.PreferEncrypt.MUTUAL : AutocryptPeerUpdate.PreferEncrypt.NOPREFERENCE);
                intent.putExtra("autocrypt_peer_id", str6);
                intent.putExtra("autocrypt_peer_update", autocryptPeerUpdate);
                return true;
            }
        }
        return false;
    }

    public static DeletePolicy fromInt(int i) {
        Object obj;
        EnumEntriesList enumEntriesList = DeletePolicy.$ENTRIES;
        enumEntriesList.getClass();
        UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
        while (true) {
            if (!iterator.hasNext()) {
                obj = null;
                break;
            }
            obj = iterator.next();
            if (((DeletePolicy) obj).setting == i) {
                break;
            }
        }
        DeletePolicy deletePolicy = (DeletePolicy) obj;
        if (deletePolicy != null) {
            return deletePolicy;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m(i, " unknown", "DeletePolicy ");
        return null;
    }

    public static boolean isWhitespace(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    public static void log(String str, Object... objArr) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Log.v(null, str, Arrays.copyOf(copyOf, copyOf.length));
    }

    public static void skipWhiteSpace(CharArrayBuffer charArrayBuffer, FabPlacement fabPlacement) {
        int i = fabPlacement.height;
        int i2 = fabPlacement.left;
        int i3 = i;
        while (i < i2 && isWhitespace(charArrayBuffer.array[i])) {
            i3++;
            i++;
        }
        fabPlacement.updatePos(i3);
    }

    @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
    public RequestManager build(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        return new RequestManager(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
    public void initializeExtractor(MediaExtractor mediaExtractor, Object obj) {
        mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
    public void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
        mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onDiagnosticReceived() {
        android.util.Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback
    public void onResultReceived(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                str = "RESULT_IO_EXCEPTION";
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            android.util.Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            android.util.Log.d("ProfileInstaller", str);
        }
    }

    @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
    public void onScrollLimit(int i, int i2, int i3, boolean z) {
    }

    @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
    public void onScrollProgress(int i, int i2, int i3, int i4) {
    }
}
