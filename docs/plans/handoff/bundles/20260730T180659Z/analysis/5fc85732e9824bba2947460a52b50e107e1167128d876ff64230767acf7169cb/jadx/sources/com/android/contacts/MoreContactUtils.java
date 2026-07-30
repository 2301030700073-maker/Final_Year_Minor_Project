package com.android.contacts;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.model.account.AccountType;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;

/* loaded from: classes.dex */
public class MoreContactUtils {
    private static final String WAIT_SYMBOL_AS_STRING = String.valueOf(';');

    public static boolean shouldCollapse(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        if (!TextUtils.equals(charSequence, charSequence3)) {
            return false;
        }
        if (TextUtils.equals(charSequence2, charSequence4)) {
            return true;
        }
        if (charSequence2 == null || charSequence4 == null || !TextUtils.equals("vnd.android.cursor.item/phone_v2", charSequence)) {
            return false;
        }
        return shouldCollapsePhoneNumbers(charSequence2.toString(), charSequence4.toString());
    }

    private static boolean shouldCollapsePhoneNumbers(String str, String str2) {
        if (str.contains("#") != str2.contains("#") || str.contains("*") != str2.contains("*")) {
            return false;
        }
        String[] split = str.split(WAIT_SYMBOL_AS_STRING);
        String[] split2 = str2.split(WAIT_SYMBOL_AS_STRING);
        if (split.length != split2.length) {
            return false;
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        for (int i = 0; i < split.length; i++) {
            String convertKeypadLettersToDigits = PhoneNumberUtils.convertKeypadLettersToDigits(split[i]);
            String str3 = split2[i];
            if (!TextUtils.equals(convertKeypadLettersToDigits, str3)) {
                int i2 = AnonymousClass1.$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType[phoneNumberUtil.isNumberMatch(convertKeypadLettersToDigits, str3).ordinal()];
                if (i2 == 1 || i2 == 2) {
                    return false;
                }
                if (i2 == 3) {
                    continue;
                } else {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return false;
                        }
                        throw new IllegalStateException("Unknown result value from phone number library");
                    }
                    try {
                        try {
                            if (phoneNumberUtil.parse(convertKeypadLettersToDigits, null).getCountryCode() != 1 || str3.trim().charAt(0) == '1') {
                                return false;
                            }
                        } catch (NumberParseException unused) {
                            phoneNumberUtil.parse(str3, null);
                        }
                    } catch (NumberParseException unused2) {
                        continue;
                    }
                }
            }
        }
        return true;
        return false;
    }

    /* renamed from: com.android.contacts.MoreContactUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType;

        static {
            int[] iArr = new int[PhoneNumberUtil.MatchType.values().length];
            $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType = iArr;
            try {
                iArr[PhoneNumberUtil.MatchType.NOT_A_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType[PhoneNumberUtil.MatchType.NO_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType[PhoneNumberUtil.MatchType.EXACT_MATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType[PhoneNumberUtil.MatchType.NSN_MATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$MatchType[PhoneNumberUtil.MatchType.SHORT_NSN_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static Rect getTargetRectFromView(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = iArr[0] + view.getWidth();
        rect.bottom = iArr[1] + view.getHeight();
        return rect;
    }

    public static TextView createHeaderView(Context context, int i) {
        TextView textView = (TextView) View.inflate(context, R.layout.list_separator, null);
        textView.setText(context.getString(i));
        return textView;
    }

    public static void setHeaderViewBottomPadding(Context context, TextView textView, boolean z) {
        float dimension;
        if (z) {
            dimension = context.getResources().getDimension(R.dimen.frequently_contacted_title_top_margin_when_first_row);
        } else {
            dimension = context.getResources().getDimension(R.dimen.frequently_contacted_title_top_margin);
        }
        textView.setPaddingRelative(textView.getPaddingStart(), (int) dimension, textView.getPaddingEnd(), textView.getPaddingBottom());
    }

    public static Intent getInvitableIntent(AccountType accountType, Uri uri) {
        String str = accountType.syncAdapterPackageName;
        String inviteContactActivityClassName = accountType.getInviteContactActivityClassName();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(inviteContactActivityClassName)) {
            return null;
        }
        Intent intent = new Intent();
        intent.setClassName(str, inviteContactActivityClassName);
        intent.setAction("com.android.contacts.action.INVITE_CONTACT");
        intent.setData(uri);
        return intent;
    }
}
