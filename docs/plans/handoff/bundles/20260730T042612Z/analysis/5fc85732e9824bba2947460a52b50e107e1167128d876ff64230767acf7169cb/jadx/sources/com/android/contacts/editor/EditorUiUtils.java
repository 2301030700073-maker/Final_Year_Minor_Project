package com.android.contacts.editor;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.ContactsUtils;
import com.android.contacts.R;
import com.android.contacts.model.ValuesDelta;
import com.android.contacts.model.account.AccountDisplayInfo;
import com.android.contacts.model.account.AccountInfo;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.MaterialColorMapUtils;
import com.android.contacts.widget.QuickContactImageView;
import com.google.common.collect.Maps;
import java.io.FileNotFoundException;
import java.util.HashMap;

/* loaded from: classes.dex */
public class EditorUiUtils {
    private static final HashMap<String, Integer> mimetypeLayoutMap;

    private static boolean isNewerThanM(int i) {
        return i > 23;
    }

    static {
        HashMap<String, Integer> newHashMap = Maps.newHashMap();
        mimetypeLayoutMap = newHashMap;
        newHashMap.put("vnd.android.cursor.item/name", Integer.valueOf(R.layout.structured_name_editor_view));
        mimetypeLayoutMap.put("vnd.android.cursor.item/group_membership", -1);
        mimetypeLayoutMap.put("vnd.android.cursor.item/photo", -1);
        mimetypeLayoutMap.put("vnd.android.cursor.item/contact_event", Integer.valueOf(R.layout.event_field_editor_view));
    }

    public static int getLayoutResourceId(String str) {
        Integer num = mimetypeLayoutMap.get(str);
        return num == null ? R.layout.text_fields_editor_view : num.intValue();
    }

    public static String getAccountHeaderLabelForMyProfile(Context context, AccountInfo accountInfo) {
        if (accountInfo.isDeviceAccount()) {
            return context.getString(R.string.local_profile_title);
        }
        return context.getString(R.string.external_profile_title, accountInfo.getTypeLabel());
    }

    public static String getAccountTypeHeaderLabel(Context context, AccountDisplayInfo accountDisplayInfo) {
        if (accountDisplayInfo.isDeviceAccount()) {
            return accountDisplayInfo.getTypeLabel().toString();
        }
        if (accountDisplayInfo.isGoogleAccount()) {
            return context.getString(R.string.google_account_type_format, accountDisplayInfo.getTypeLabel());
        }
        return context.getString(R.string.account_type_format, accountDisplayInfo.getTypeLabel());
    }

    public static String getAccountInfoContentDescription(CharSequence charSequence, CharSequence charSequence2) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(charSequence2)) {
            sb.append(charSequence2);
            sb.append('\n');
        }
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Drawable getMimeTypeDrawable(Context context, String str) {
        char c;
        switch (str.hashCode()) {
            case -1569536764:
                if (str.equals("vnd.android.cursor.item/email_v2")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1328682538:
                if (str.equals("vnd.android.cursor.item/contact_event")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1079224304:
                if (str.equals("vnd.android.cursor.item/name")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1079210633:
                if (str.equals("vnd.android.cursor.item/note")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -601229436:
                if (str.equals("vnd.android.cursor.item/postal-address_v2")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3430506:
                if (str.equals("vnd.android.cursor.item/sip_address")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 456415478:
                if (str.equals("vnd.android.cursor.item/website")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 684173810:
                if (str.equals("vnd.android.cursor.item/phone_v2")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 689862072:
                if (str.equals("vnd.android.cursor.item/organization")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 905843021:
                if (str.equals("vnd.android.cursor.item/photo")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 950831081:
                if (str.equals("vnd.android.cursor.item/im")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1409846529:
                if (str.equals("vnd.android.cursor.item/relation")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1464725403:
                if (str.equals("vnd.android.cursor.item/group_membership")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_person_vd_theme_24, null);
            case 1:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_place_vd_theme_24, null);
            case 2:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_dialer_sip_vd_theme_24, null);
            case 3:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_phone_vd_theme_24, null);
            case 4:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_message_vd_theme_24, null);
            case 5:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_event_vd_theme_24, null);
            case 6:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_email_vd_theme_24, null);
            case 7:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_public_vd_theme_24, null);
            case '\b':
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_camera_alt_vd_theme_24, null);
            case '\t':
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_label_vd_theme_24, null);
            case '\n':
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_business_vd_theme_24, null);
            case 11:
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_insert_comment_vd_theme_24, null);
            case '\f':
                return ResourcesCompat.getDrawable(context.getResources(), R.drawable.quantum_ic_circles_ext_vd_theme_24, null);
            default:
                return null;
        }
    }

    public static String getRingtoneStringFromUri(Uri uri, int i) {
        if (isNewerThanM(i)) {
            if (uri == null) {
                return "";
            }
            if (RingtoneManager.isDefault(uri)) {
                return null;
            }
        }
        if (uri == null || RingtoneManager.isDefault(uri)) {
            return null;
        }
        return uri.toString();
    }

    public static Uri getRingtoneUriFromString(String str, int i) {
        if (str != null) {
            if (isNewerThanM(i) && TextUtils.isEmpty(str)) {
                return null;
            }
            return Uri.parse(str);
        }
        return RingtoneManager.getDefaultUri(1);
    }

    public static Long getPhotoFileId(ValuesDelta valuesDelta) {
        if (valuesDelta == null) {
            return null;
        }
        if (valuesDelta.getAfter() == null || valuesDelta.getAfter().get("data15") == null) {
            return valuesDelta.getAsLong("data14");
        }
        return null;
    }

    static void loadPhoto(ContactPhotoManager contactPhotoManager, ImageView imageView, Uri uri) {
        contactPhotoManager.loadPhoto(imageView, uri, imageView.getWidth(), false, false, null, new ContactPhotoManager.DefaultImageProvider() { // from class: com.android.contacts.editor.EditorUiUtils.1
            @Override // com.android.contacts.ContactPhotoManager.DefaultImageProvider
            public void applyDefaultImage(ImageView imageView2, int i, boolean z, ContactPhotoManager.DefaultImageRequest defaultImageRequest) {
            }
        });
    }

    public static Bitmap getPhotoBitmap(ValuesDelta valuesDelta) {
        byte[] asByteArray;
        if (valuesDelta == null || (asByteArray = valuesDelta.getAsByteArray("data15")) == null) {
            return null;
        }
        return BitmapFactory.decodeByteArray(asByteArray, 0, asByteArray.length);
    }

    public static void setDefaultPhoto(ImageView imageView, Resources resources, MaterialColorMapUtils.MaterialPalette materialPalette) {
        int i;
        imageView.setImageDrawable(ContactPhotoManager.getDefaultAvatarDrawableForContact(resources, false, null));
        if (imageView instanceof QuickContactImageView) {
            QuickContactImageView quickContactImageView = (QuickContactImageView) imageView;
            if (materialPalette == null) {
                i = MaterialColorMapUtils.getDefaultPrimaryAndSecondaryColors(resources).mPrimaryColor;
            } else {
                i = materialPalette.mPrimaryColor;
            }
            quickContactImageView.setTint(i);
        }
    }

    public static byte[] getCompressedThumbnailBitmapBytes(Context context, Uri uri) throws FileNotFoundException {
        Bitmap bitmapFromUri = ContactPhotoUtils.getBitmapFromUri(context, uri);
        int thumbnailSize = ContactsUtils.getThumbnailSize(context);
        return ContactPhotoUtils.compressBitmap(Bitmap.createScaledBitmap(bitmapFromUri, thumbnailSize, thumbnailSize, false));
    }
}
