package com.android.vcard;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.android.vcard.VCardUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class VCardBuilder {
    private static final Set<String> sAllowedAndroidPropertySet = Collections.unmodifiableSet(new HashSet(Arrays.asList("vnd.android.cursor.item/nickname", "vnd.android.cursor.item/contact_event", "vnd.android.cursor.item/relation")));
    private static final Map<Integer, Integer> sPostalTypePriorityMap;
    private final boolean mAppendTypeParamName;
    private StringBuilder mBuilder;
    private final String mCharset;
    private boolean mEndAppended;
    private final boolean mIsDoCoMo;
    private final boolean mIsJapaneseMobilePhone;
    private final boolean mIsV30OrV40;
    private final boolean mNeedsToConvertPhoneticString;
    private final boolean mOnlyOneNoteFieldIsAvailable;
    private final boolean mRefrainsQPToNameProperties;
    private final boolean mShouldAppendCharsetParam;
    private final boolean mShouldUseQuotedPrintable;
    private final boolean mUsesAndroidProperty;
    private final boolean mUsesDefactProperty;
    private final String mVCardCharsetParameter;
    private final int mVCardType;

    static {
        HashMap hashMap = new HashMap();
        sPostalTypePriorityMap = hashMap;
        hashMap.put(1, 0);
        sPostalTypePriorityMap.put(2, 1);
        sPostalTypePriorityMap.put(3, 2);
        sPostalTypePriorityMap.put(0, 3);
    }

    public VCardBuilder(int i, String str) {
        this.mVCardType = i;
        if (VCardConfig.isVersion40(i)) {
            Log.w("vCard", "Should not use vCard 4.0 when building vCard. It is not officially published yet.");
        }
        this.mIsV30OrV40 = VCardConfig.isVersion30(i) || VCardConfig.isVersion40(i);
        this.mShouldUseQuotedPrintable = VCardConfig.shouldUseQuotedPrintable(i);
        this.mIsDoCoMo = VCardConfig.isDoCoMo(i);
        this.mIsJapaneseMobilePhone = VCardConfig.needsToConvertPhoneticString(i);
        this.mOnlyOneNoteFieldIsAvailable = VCardConfig.onlyOneNoteFieldIsAvailable(i);
        this.mUsesAndroidProperty = VCardConfig.usesAndroidSpecificProperty(i);
        this.mUsesDefactProperty = VCardConfig.usesDefactProperty(i);
        this.mRefrainsQPToNameProperties = VCardConfig.shouldRefrainQPToNameProperties(i);
        this.mAppendTypeParamName = VCardConfig.appendTypeParamName(i);
        this.mNeedsToConvertPhoneticString = VCardConfig.needsToConvertPhoneticString(i);
        this.mShouldAppendCharsetParam = (VCardConfig.isVersion30(i) && "UTF-8".equalsIgnoreCase(str)) ? false : true;
        if (VCardConfig.isDoCoMo(i)) {
            if (!"SHIFT_JIS".equalsIgnoreCase(str)) {
                if (TextUtils.isEmpty(str)) {
                    this.mCharset = "SHIFT_JIS";
                } else {
                    this.mCharset = str;
                }
            } else {
                this.mCharset = str;
            }
            this.mVCardCharsetParameter = "CHARSET=SHIFT_JIS";
        } else if (TextUtils.isEmpty(str)) {
            Log.i("vCard", "Use the charset \"UTF-8\" for export.");
            this.mCharset = "UTF-8";
            this.mVCardCharsetParameter = "CHARSET=UTF-8";
        } else {
            this.mCharset = str;
            this.mVCardCharsetParameter = "CHARSET=" + str;
        }
        clear();
    }

    public void clear() {
        this.mBuilder = new StringBuilder();
        this.mEndAppended = false;
        appendLine("BEGIN", "VCARD");
        if (VCardConfig.isVersion40(this.mVCardType)) {
            appendLine("VERSION", "4.0");
        } else {
            if (VCardConfig.isVersion30(this.mVCardType)) {
                appendLine("VERSION", "3.0");
                return;
            }
            if (!VCardConfig.isVersion21(this.mVCardType)) {
                Log.w("vCard", "Unknown vCard version detected.");
            }
            appendLine("VERSION", "2.1");
        }
    }

    private boolean containsNonEmptyName(ContentValues contentValues) {
        return (TextUtils.isEmpty(contentValues.getAsString("data3")) && TextUtils.isEmpty(contentValues.getAsString("data5")) && TextUtils.isEmpty(contentValues.getAsString("data2")) && TextUtils.isEmpty(contentValues.getAsString("data4")) && TextUtils.isEmpty(contentValues.getAsString("data6")) && TextUtils.isEmpty(contentValues.getAsString("data9")) && TextUtils.isEmpty(contentValues.getAsString("data8")) && TextUtils.isEmpty(contentValues.getAsString("data7")) && TextUtils.isEmpty(contentValues.getAsString("data1"))) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0043, code lost:
    
        if (containsNonEmptyName(r2) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.ContentValues getPrimaryContentValueWithStructuredName(java.util.List<android.content.ContentValues> r5) {
        /*
            r4 = this;
            java.util.Iterator r5 = r5.iterator()
            r0 = 0
            r1 = r0
        L6:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto L47
            java.lang.Object r2 = r5.next()
            android.content.ContentValues r2 = (android.content.ContentValues) r2
            if (r2 != 0) goto L15
            goto L6
        L15:
            java.lang.String r3 = "is_super_primary"
            java.lang.Integer r3 = r2.getAsInteger(r3)
            if (r3 == 0) goto L25
            int r3 = r3.intValue()
            if (r3 <= 0) goto L25
            r0 = r2
            goto L47
        L25:
            if (r0 != 0) goto L6
            java.lang.String r3 = "is_primary"
            java.lang.Integer r3 = r2.getAsInteger(r3)
            if (r3 == 0) goto L3d
            int r3 = r3.intValue()
            if (r3 <= 0) goto L3d
            boolean r3 = r4.containsNonEmptyName(r2)
            if (r3 == 0) goto L3d
            r0 = r2
            goto L6
        L3d:
            if (r1 != 0) goto L6
            boolean r3 = r4.containsNonEmptyName(r2)
            if (r3 == 0) goto L6
            r1 = r2
            goto L6
        L47:
            if (r0 != 0) goto L52
            if (r1 == 0) goto L4c
            goto L53
        L4c:
            android.content.ContentValues r1 = new android.content.ContentValues
            r1.<init>()
            goto L53
        L52:
            r1 = r0
        L53:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardBuilder.getPrimaryContentValueWithStructuredName(java.util.List):android.content.ContentValues");
    }

    private VCardBuilder appendNamePropertiesV40(List<ContentValues> list) {
        String str;
        if (this.mIsDoCoMo || this.mNeedsToConvertPhoneticString) {
            Log.w("vCard", "Invalid flag is used in vCard 4.0 construction. Ignored.");
        }
        if (list == null || list.isEmpty()) {
            appendLine("FN", "");
            return this;
        }
        ContentValues primaryContentValueWithStructuredName = getPrimaryContentValueWithStructuredName(list);
        String asString = primaryContentValueWithStructuredName.getAsString("data3");
        String asString2 = primaryContentValueWithStructuredName.getAsString("data5");
        String asString3 = primaryContentValueWithStructuredName.getAsString("data2");
        String asString4 = primaryContentValueWithStructuredName.getAsString("data4");
        String asString5 = primaryContentValueWithStructuredName.getAsString("data6");
        String asString6 = primaryContentValueWithStructuredName.getAsString("data1");
        if (!TextUtils.isEmpty(asString) || !TextUtils.isEmpty(asString3) || !TextUtils.isEmpty(asString2) || !TextUtils.isEmpty(asString4) || !TextUtils.isEmpty(asString5)) {
            str = asString;
        } else {
            if (TextUtils.isEmpty(asString6)) {
                appendLine("FN", "");
                return this;
            }
            str = asString6;
        }
        String asString7 = primaryContentValueWithStructuredName.getAsString("data9");
        String asString8 = primaryContentValueWithStructuredName.getAsString("data8");
        String asString9 = primaryContentValueWithStructuredName.getAsString("data7");
        String escapeCharacters = escapeCharacters(str);
        String escapeCharacters2 = escapeCharacters(asString3);
        String escapeCharacters3 = escapeCharacters(asString2);
        String escapeCharacters4 = escapeCharacters(asString4);
        String escapeCharacters5 = escapeCharacters(asString5);
        this.mBuilder.append("N");
        if (!TextUtils.isEmpty(asString7) || !TextUtils.isEmpty(asString8) || !TextUtils.isEmpty(asString9)) {
            this.mBuilder.append(";");
            String str2 = escapeCharacters(asString7) + ';' + escapeCharacters(asString9) + ';' + escapeCharacters(asString8);
            StringBuilder sb = this.mBuilder;
            sb.append("SORT-AS=");
            sb.append(VCardUtils.toStringAsV40ParamValue(str2));
        }
        this.mBuilder.append(":");
        this.mBuilder.append(escapeCharacters);
        this.mBuilder.append(";");
        this.mBuilder.append(escapeCharacters2);
        this.mBuilder.append(";");
        this.mBuilder.append(escapeCharacters3);
        this.mBuilder.append(";");
        this.mBuilder.append(escapeCharacters4);
        this.mBuilder.append(";");
        this.mBuilder.append(escapeCharacters5);
        this.mBuilder.append("\r\n");
        if (TextUtils.isEmpty(asString6)) {
            Log.w("vCard", "DISPLAY_NAME is empty.");
            appendLine("FN", escapeCharacters(VCardUtils.constructNameFromElements(VCardConfig.getNameOrderType(this.mVCardType), str, asString2, asString3, asString4, asString5)));
        } else {
            String escapeCharacters6 = escapeCharacters(asString6);
            this.mBuilder.append("FN");
            this.mBuilder.append(":");
            this.mBuilder.append(escapeCharacters6);
            this.mBuilder.append("\r\n");
        }
        appendPhoneticNameFields(primaryContentValueWithStructuredName);
        return this;
    }

    public VCardBuilder appendNameProperties(List<ContentValues> list) {
        ContentValues contentValues;
        int i;
        String str;
        String str2;
        String escapeCharacters;
        String escapeCharacters2;
        String escapeCharacters3;
        String escapeCharacters4;
        String escapeCharacters5;
        String str3;
        ContentValues contentValues2;
        if (VCardConfig.isVersion40(this.mVCardType)) {
            appendNamePropertiesV40(list);
            return this;
        }
        if (list == null || list.isEmpty()) {
            if (VCardConfig.isVersion30(this.mVCardType)) {
                appendLine("N", "");
                appendLine("FN", "");
            } else if (this.mIsDoCoMo) {
                appendLine("N", "");
            }
            return this;
        }
        ContentValues primaryContentValueWithStructuredName = getPrimaryContentValueWithStructuredName(list);
        String asString = primaryContentValueWithStructuredName.getAsString("data3");
        String asString2 = primaryContentValueWithStructuredName.getAsString("data5");
        String asString3 = primaryContentValueWithStructuredName.getAsString("data2");
        String asString4 = primaryContentValueWithStructuredName.getAsString("data4");
        String asString5 = primaryContentValueWithStructuredName.getAsString("data6");
        String asString6 = primaryContentValueWithStructuredName.getAsString("data1");
        if (!TextUtils.isEmpty(asString) || !TextUtils.isEmpty(asString3)) {
            boolean z = false;
            boolean shouldAppendCharsetParam = shouldAppendCharsetParam(asString, asString3, asString2, asString4, asString5);
            boolean z2 = (this.mRefrainsQPToNameProperties || (VCardUtils.containsOnlyNonCrLfPrintableAscii(asString) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString3) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString4) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString5))) ? false : true;
            if (TextUtils.isEmpty(asString6)) {
                contentValues = primaryContentValueWithStructuredName;
                i = 1;
                str = ";";
                str2 = "\r\n";
                asString6 = VCardUtils.constructNameFromElements(VCardConfig.getNameOrderType(this.mVCardType), asString, asString2, asString3, asString4, asString5);
            } else {
                contentValues = primaryContentValueWithStructuredName;
                str = ";";
                str2 = "\r\n";
                i = 1;
            }
            String[] strArr = new String[i];
            strArr[0] = asString6;
            boolean shouldAppendCharsetParam2 = shouldAppendCharsetParam(strArr);
            if (!this.mRefrainsQPToNameProperties) {
                String[] strArr2 = new String[i];
                strArr2[0] = asString6;
                if (!VCardUtils.containsOnlyNonCrLfPrintableAscii(strArr2)) {
                    z = true;
                }
            }
            if (z2) {
                escapeCharacters = encodeQuotedPrintable(asString);
                escapeCharacters2 = encodeQuotedPrintable(asString3);
                escapeCharacters3 = encodeQuotedPrintable(asString2);
                escapeCharacters4 = encodeQuotedPrintable(asString4);
                escapeCharacters5 = encodeQuotedPrintable(asString5);
            } else {
                escapeCharacters = escapeCharacters(asString);
                escapeCharacters2 = escapeCharacters(asString3);
                escapeCharacters3 = escapeCharacters(asString2);
                escapeCharacters4 = escapeCharacters(asString4);
                escapeCharacters5 = escapeCharacters(asString5);
            }
            String encodeQuotedPrintable = z ? encodeQuotedPrintable(asString6) : escapeCharacters(asString6);
            this.mBuilder.append("N");
            if (this.mIsDoCoMo) {
                if (shouldAppendCharsetParam) {
                    str3 = str;
                    this.mBuilder.append(str3);
                    this.mBuilder.append(this.mVCardCharsetParameter);
                } else {
                    str3 = str;
                }
                if (z2) {
                    this.mBuilder.append(str3);
                    this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
                }
                this.mBuilder.append(":");
                this.mBuilder.append(asString6);
                this.mBuilder.append(str3);
                this.mBuilder.append(str3);
                this.mBuilder.append(str3);
                this.mBuilder.append(str3);
            } else {
                str3 = str;
                if (shouldAppendCharsetParam) {
                    this.mBuilder.append(str3);
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                if (z2) {
                    this.mBuilder.append(str3);
                    this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
                }
                this.mBuilder.append(":");
                this.mBuilder.append(escapeCharacters);
                this.mBuilder.append(str3);
                this.mBuilder.append(escapeCharacters2);
                this.mBuilder.append(str3);
                this.mBuilder.append(escapeCharacters3);
                this.mBuilder.append(str3);
                this.mBuilder.append(escapeCharacters4);
                this.mBuilder.append(str3);
                this.mBuilder.append(escapeCharacters5);
            }
            String str4 = str2;
            this.mBuilder.append(str4);
            this.mBuilder.append("FN");
            if (shouldAppendCharsetParam2) {
                this.mBuilder.append(str3);
                this.mBuilder.append(this.mVCardCharsetParameter);
            }
            if (z) {
                this.mBuilder.append(str3);
                this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
            }
            this.mBuilder.append(":");
            this.mBuilder.append(encodeQuotedPrintable);
            this.mBuilder.append(str4);
            contentValues2 = contentValues;
        } else {
            if (!TextUtils.isEmpty(asString6)) {
                buildSinglePartNameField("N", asString6);
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append("\r\n");
                buildSinglePartNameField("FN", asString6);
                this.mBuilder.append("\r\n");
            } else if (VCardConfig.isVersion30(this.mVCardType)) {
                appendLine("N", "");
                appendLine("FN", "");
            } else if (this.mIsDoCoMo) {
                appendLine("N", "");
            }
            contentValues2 = primaryContentValueWithStructuredName;
        }
        appendPhoneticNameFields(contentValues2);
        return this;
    }

    private void buildSinglePartNameField(String str, String str2) {
        String escapeCharacters;
        boolean z = (this.mRefrainsQPToNameProperties || VCardUtils.containsOnlyNonCrLfPrintableAscii(str2)) ? false : true;
        if (z) {
            escapeCharacters = encodeQuotedPrintable(str2);
        } else {
            escapeCharacters = escapeCharacters(str2);
        }
        this.mBuilder.append(str);
        if (shouldAppendCharsetParam(str2)) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z) {
            this.mBuilder.append(";");
            this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
        }
        this.mBuilder.append(":");
        this.mBuilder.append(escapeCharacters);
    }

    private void appendPhoneticNameFields(ContentValues contentValues) {
        String escapeCharacters;
        String escapeCharacters2;
        String escapeCharacters3;
        String escapeCharacters4;
        String escapeCharacters5;
        String escapeCharacters6;
        boolean z;
        String asString = contentValues.getAsString("data9");
        String asString2 = contentValues.getAsString("data8");
        String asString3 = contentValues.getAsString("data7");
        if (this.mNeedsToConvertPhoneticString) {
            asString = VCardUtils.toHalfWidthString(asString);
            asString2 = VCardUtils.toHalfWidthString(asString2);
            asString3 = VCardUtils.toHalfWidthString(asString3);
        }
        if (TextUtils.isEmpty(asString) && TextUtils.isEmpty(asString2) && TextUtils.isEmpty(asString3)) {
            if (this.mIsDoCoMo) {
                this.mBuilder.append("SOUND");
                this.mBuilder.append(";");
                this.mBuilder.append("X-IRMC-N");
                this.mBuilder.append(":");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append("\r\n");
                return;
            }
            return;
        }
        if (!VCardConfig.isVersion40(this.mVCardType)) {
            if (VCardConfig.isVersion30(this.mVCardType)) {
                String constructNameFromElements = VCardUtils.constructNameFromElements(this.mVCardType, asString, asString2, asString3);
                this.mBuilder.append("SORT-STRING");
                if (VCardConfig.isVersion30(this.mVCardType) && shouldAppendCharsetParam(constructNameFromElements)) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                this.mBuilder.append(":");
                this.mBuilder.append(escapeCharacters(constructNameFromElements));
                this.mBuilder.append("\r\n");
            } else if (this.mIsJapaneseMobilePhone) {
                this.mBuilder.append("SOUND");
                this.mBuilder.append(";");
                this.mBuilder.append("X-IRMC-N");
                if ((this.mRefrainsQPToNameProperties || (VCardUtils.containsOnlyNonCrLfPrintableAscii(asString) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2) && VCardUtils.containsOnlyNonCrLfPrintableAscii(asString3))) ? false : true) {
                    escapeCharacters4 = encodeQuotedPrintable(asString);
                    escapeCharacters5 = encodeQuotedPrintable(asString2);
                    escapeCharacters6 = encodeQuotedPrintable(asString3);
                } else {
                    escapeCharacters4 = escapeCharacters(asString);
                    escapeCharacters5 = escapeCharacters(asString2);
                    escapeCharacters6 = escapeCharacters(asString3);
                }
                if (shouldAppendCharsetParam(escapeCharacters4, escapeCharacters5, escapeCharacters6)) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                this.mBuilder.append(":");
                if (TextUtils.isEmpty(escapeCharacters4)) {
                    z = true;
                } else {
                    this.mBuilder.append(escapeCharacters4);
                    z = false;
                }
                if (!TextUtils.isEmpty(escapeCharacters5)) {
                    if (z) {
                        z = false;
                    } else {
                        this.mBuilder.append(' ');
                    }
                    this.mBuilder.append(escapeCharacters5);
                }
                if (!TextUtils.isEmpty(escapeCharacters6)) {
                    if (!z) {
                        this.mBuilder.append(' ');
                    }
                    this.mBuilder.append(escapeCharacters6);
                }
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append(";");
                this.mBuilder.append("\r\n");
            }
        }
        if (this.mUsesDefactProperty) {
            if (!TextUtils.isEmpty(asString3)) {
                boolean z2 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString3);
                if (z2) {
                    escapeCharacters3 = encodeQuotedPrintable(asString3);
                } else {
                    escapeCharacters3 = escapeCharacters(asString3);
                }
                this.mBuilder.append("X-PHONETIC-FIRST-NAME");
                if (shouldAppendCharsetParam(asString3)) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                if (z2) {
                    this.mBuilder.append(";");
                    this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
                }
                this.mBuilder.append(":");
                this.mBuilder.append(escapeCharacters3);
                this.mBuilder.append("\r\n");
            }
            if (!TextUtils.isEmpty(asString2)) {
                boolean z3 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2);
                if (z3) {
                    escapeCharacters2 = encodeQuotedPrintable(asString2);
                } else {
                    escapeCharacters2 = escapeCharacters(asString2);
                }
                this.mBuilder.append("X-PHONETIC-MIDDLE-NAME");
                if (shouldAppendCharsetParam(asString2)) {
                    this.mBuilder.append(";");
                    this.mBuilder.append(this.mVCardCharsetParameter);
                }
                if (z3) {
                    this.mBuilder.append(";");
                    this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
                }
                this.mBuilder.append(":");
                this.mBuilder.append(escapeCharacters2);
                this.mBuilder.append("\r\n");
            }
            if (TextUtils.isEmpty(asString)) {
                return;
            }
            boolean z4 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString);
            if (z4) {
                escapeCharacters = encodeQuotedPrintable(asString);
            } else {
                escapeCharacters = escapeCharacters(asString);
            }
            this.mBuilder.append("X-PHONETIC-LAST-NAME");
            if (shouldAppendCharsetParam(asString)) {
                this.mBuilder.append(";");
                this.mBuilder.append(this.mVCardCharsetParameter);
            }
            if (z4) {
                this.mBuilder.append(";");
                this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
            }
            this.mBuilder.append(":");
            this.mBuilder.append(escapeCharacters);
            this.mBuilder.append("\r\n");
        }
    }

    public VCardBuilder appendNickNames(List<ContentValues> list) {
        boolean z;
        if (!this.mIsV30OrV40) {
            z = this.mUsesAndroidProperty;
            return this;
        }
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString("data1");
                if (!TextUtils.isEmpty(asString)) {
                    if (z) {
                        appendAndroidSpecificProperty("vnd.android.cursor.item/nickname", contentValues);
                    } else {
                        appendLineWithCharsetAndQPDetection("NICKNAME", asString);
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendPhones(List<ContentValues> list, VCardPhoneNumberTranslationCallback vCardPhoneNumberTranslationCallback) {
        boolean z;
        if (list != null) {
            HashSet hashSet = new HashSet();
            z = false;
            for (ContentValues contentValues : list) {
                Integer asInteger = contentValues.getAsInteger("data2");
                String asString = contentValues.getAsString("data3");
                Integer asInteger2 = contentValues.getAsInteger("is_primary");
                boolean z2 = asInteger2 != null && asInteger2.intValue() > 0;
                String asString2 = contentValues.getAsString("data1");
                if (asString2 != null) {
                    asString2 = asString2.trim();
                }
                if (!TextUtils.isEmpty(asString2)) {
                    int intValue = asInteger != null ? asInteger.intValue() : 1;
                    if (vCardPhoneNumberTranslationCallback != null) {
                        String onValueReceived = vCardPhoneNumberTranslationCallback.onValueReceived(asString2, intValue, asString, z2);
                        if (!hashSet.contains(onValueReceived)) {
                            hashSet.add(onValueReceived);
                            appendTelLine(Integer.valueOf(intValue), asString, onValueReceived, z2);
                        }
                    } else {
                        if (intValue == 6 || VCardConfig.refrainPhoneNumberFormatting(this.mVCardType)) {
                            if (!hashSet.contains(asString2)) {
                                hashSet.add(asString2);
                                appendTelLine(Integer.valueOf(intValue), asString, asString2, z2);
                            }
                        } else {
                            List<String> splitPhoneNumbers = splitPhoneNumbers(asString2);
                            if (!splitPhoneNumbers.isEmpty()) {
                                for (String str : splitPhoneNumbers) {
                                    if (!hashSet.contains(str)) {
                                        String replace = str.replace(',', 'p').replace(';', 'w');
                                        if (TextUtils.equals(replace, str)) {
                                            StringBuilder sb = new StringBuilder();
                                            int length = str.length();
                                            for (int i = 0; i < length; i++) {
                                                char charAt = str.charAt(i);
                                                if (Character.isDigit(charAt) || charAt == '+') {
                                                    sb.append(charAt);
                                                }
                                            }
                                            replace = VCardUtils.PhoneNumberUtilsPort.formatNumber(sb.toString(), VCardUtils.getPhoneNumberFormat(this.mVCardType));
                                        }
                                        if (VCardConfig.isVersion40(this.mVCardType) && !TextUtils.isEmpty(replace) && !replace.startsWith("tel:")) {
                                            replace = "tel:" + replace;
                                        }
                                        hashSet.add(str);
                                        appendTelLine(Integer.valueOf(intValue), asString, replace, z2);
                                    }
                                }
                            }
                        }
                        z = true;
                    }
                }
            }
        } else {
            z = false;
        }
        if (!z && this.mIsDoCoMo) {
            appendTelLine(1, "", "", false);
        }
        return this;
    }

    private List<String> splitPhoneNumbers(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n' && sb.length() > 0) {
                arrayList.add(sb.toString());
                sb = new StringBuilder();
            } else {
                sb.append(charAt);
            }
        }
        if (sb.length() > 0) {
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public VCardBuilder appendEmails(List<ContentValues> list) {
        boolean z;
        if (list != null) {
            HashSet hashSet = new HashSet();
            z = false;
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString("data1");
                if (asString != null) {
                    asString = asString.trim();
                }
                if (!TextUtils.isEmpty(asString)) {
                    Integer asInteger = contentValues.getAsInteger("data2");
                    int intValue = asInteger != null ? asInteger.intValue() : 3;
                    String asString2 = contentValues.getAsString("data3");
                    Integer asInteger2 = contentValues.getAsInteger("is_primary");
                    boolean z2 = asInteger2 != null && asInteger2.intValue() > 0;
                    if (!hashSet.contains(asString)) {
                        hashSet.add(asString);
                        appendEmailLine(intValue, asString2, asString, z2);
                    }
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (!z && this.mIsDoCoMo) {
            appendEmailLine(1, "", "", false);
        }
        return this;
    }

    public VCardBuilder appendPostals(List<ContentValues> list) {
        if (list == null || list.isEmpty()) {
            if (this.mIsDoCoMo) {
                this.mBuilder.append("ADR");
                this.mBuilder.append(";");
                this.mBuilder.append("HOME");
                this.mBuilder.append(":");
                this.mBuilder.append("\r\n");
            }
        } else if (this.mIsDoCoMo) {
            appendPostalsForDoCoMo(list);
        } else {
            appendPostalsForGeneric(list);
        }
        return this;
    }

    private void appendPostalsForDoCoMo(List<ContentValues> list) {
        ContentValues contentValues;
        int i;
        Iterator<ContentValues> it = list.iterator();
        ContentValues contentValues2 = null;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        while (true) {
            if (!it.hasNext()) {
                contentValues = contentValues2;
                i = i3;
                break;
            }
            ContentValues next = it.next();
            if (next != null) {
                Integer asInteger = next.getAsInteger("data2");
                Integer num = sPostalTypePriorityMap.get(asInteger);
                int intValue = num != null ? num.intValue() : Integer.MAX_VALUE;
                if (intValue < i2) {
                    i3 = asInteger.intValue();
                    if (intValue == 0) {
                        i = i3;
                        contentValues = next;
                        break;
                    } else {
                        contentValues2 = next;
                        i2 = intValue;
                    }
                } else {
                    continue;
                }
            }
        }
        if (contentValues == null) {
            Log.w("vCard", "Should not come here. Must have at least one postal data.");
        } else {
            appendPostalLine(i, contentValues.getAsString("data3"), contentValues, false, true);
        }
    }

    private void appendPostalsForGeneric(List<ContentValues> list) {
        for (ContentValues contentValues : list) {
            if (contentValues != null) {
                Integer asInteger = contentValues.getAsInteger("data2");
                int intValue = asInteger != null ? asInteger.intValue() : 1;
                String asString = contentValues.getAsString("data3");
                Integer asInteger2 = contentValues.getAsInteger("is_primary");
                boolean z = false;
                if (asInteger2 != null && asInteger2.intValue() > 0) {
                    z = true;
                }
                appendPostalLine(intValue, asString, contentValues, z, false);
            }
        }
    }

    private static class PostalStruct {
        final String addressData;
        final boolean appendCharset;
        final boolean reallyUseQuotedPrintable;

        public PostalStruct(boolean z, boolean z2, String str) {
            this.reallyUseQuotedPrintable = z;
            this.appendCharset = z2;
            this.addressData = str;
        }
    }

    private PostalStruct tryConstructPostalStruct(ContentValues contentValues) {
        String escapeCharacters;
        String escapeCharacters2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String asString = contentValues.getAsString("data5");
        String asString2 = contentValues.getAsString("data6");
        String asString3 = contentValues.getAsString("data4");
        String asString4 = contentValues.getAsString("data7");
        String asString5 = contentValues.getAsString("data8");
        String asString6 = contentValues.getAsString("data9");
        String asString7 = contentValues.getAsString("data10");
        boolean z = false;
        String[] strArr = {asString, asString2, asString3, asString4, asString5, asString6, asString7};
        if (!VCardUtils.areAllEmpty(strArr)) {
            if (this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(strArr)) {
                z = true;
            }
            boolean z2 = !VCardUtils.containsOnlyPrintableAscii(strArr);
            if (TextUtils.isEmpty(asString4)) {
                asString4 = TextUtils.isEmpty(asString2) ? "" : asString2;
            } else if (!TextUtils.isEmpty(asString2)) {
                asString4 = asString4 + " " + asString2;
            }
            if (z) {
                escapeCharacters2 = encodeQuotedPrintable(asString);
                str = encodeQuotedPrintable(asString3);
                str2 = encodeQuotedPrintable(asString4);
                str3 = encodeQuotedPrintable(asString5);
                str4 = encodeQuotedPrintable(asString6);
                str5 = encodeQuotedPrintable(asString7);
            } else {
                escapeCharacters2 = escapeCharacters(asString);
                String escapeCharacters3 = escapeCharacters(asString3);
                String escapeCharacters4 = escapeCharacters(asString4);
                String escapeCharacters5 = escapeCharacters(asString5);
                String escapeCharacters6 = escapeCharacters(asString6);
                String escapeCharacters7 = escapeCharacters(asString7);
                escapeCharacters(asString2);
                str = escapeCharacters3;
                str2 = escapeCharacters4;
                str3 = escapeCharacters5;
                str4 = escapeCharacters6;
                str5 = escapeCharacters7;
            }
            return new PostalStruct(z, z2, escapeCharacters2 + ";;" + str + ";" + str2 + ";" + str3 + ";" + str4 + ";" + str5);
        }
        String asString8 = contentValues.getAsString("data1");
        if (TextUtils.isEmpty(asString8)) {
            return null;
        }
        boolean z3 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString8);
        boolean z4 = !VCardUtils.containsOnlyPrintableAscii(asString8);
        if (z3) {
            escapeCharacters = encodeQuotedPrintable(asString8);
        } else {
            escapeCharacters = escapeCharacters(asString8);
        }
        return new PostalStruct(z3, z4, ";" + escapeCharacters + ";;;;;");
    }

    public VCardBuilder appendIms(List<ContentValues> list) {
        String propertyNameForIm;
        if (list != null) {
            for (ContentValues contentValues : list) {
                Integer asInteger = contentValues.getAsInteger("data5");
                if (asInteger != null && (propertyNameForIm = VCardUtils.getPropertyNameForIm(asInteger.intValue())) != null) {
                    String asString = contentValues.getAsString("data1");
                    if (asString != null) {
                        asString = asString.trim();
                    }
                    if (!TextUtils.isEmpty(asString)) {
                        Integer asInteger2 = contentValues.getAsInteger("data2");
                        int intValue = asInteger2 != null ? asInteger2.intValue() : 3;
                        String str = null;
                        if (intValue == 0) {
                            String asString2 = contentValues.getAsString("data3");
                            if (asString2 != null) {
                                str = "X-" + asString2;
                            }
                        } else if (intValue == 1) {
                            str = "HOME";
                        } else if (intValue == 2) {
                            str = "WORK";
                        }
                        ArrayList arrayList = new ArrayList();
                        if (!TextUtils.isEmpty(str)) {
                            arrayList.add(str);
                        }
                        Integer asInteger3 = contentValues.getAsInteger("is_primary");
                        if (asInteger3 != null && asInteger3.intValue() > 0) {
                            arrayList.add("PREF");
                        }
                        appendLineWithCharsetAndQPDetection(propertyNameForIm, arrayList, asString);
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendWebsites(List<ContentValues> list) {
        if (list != null) {
            Iterator<ContentValues> it = list.iterator();
            while (it.hasNext()) {
                String asString = it.next().getAsString("data1");
                if (asString != null) {
                    asString = asString.trim();
                }
                if (!TextUtils.isEmpty(asString)) {
                    appendLineWithCharsetAndQPDetection("URL", asString);
                }
            }
        }
        return this;
    }

    public VCardBuilder appendOrganizations(List<ContentValues> list) {
        if (list != null) {
            for (ContentValues contentValues : list) {
                String asString = contentValues.getAsString("data1");
                if (asString != null) {
                    asString = asString.trim();
                }
                String asString2 = contentValues.getAsString("data5");
                if (asString2 != null) {
                    asString2 = asString2.trim();
                }
                String asString3 = contentValues.getAsString("data4");
                if (asString3 != null) {
                    asString3 = asString3.trim();
                }
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(asString)) {
                    sb.append(asString);
                }
                if (!TextUtils.isEmpty(asString2)) {
                    if (sb.length() > 0) {
                        sb.append(';');
                    }
                    sb.append(asString2);
                }
                String sb2 = sb.toString();
                appendLine("ORG", sb2, !VCardUtils.containsOnlyPrintableAscii(sb2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(sb2));
                if (!TextUtils.isEmpty(asString3)) {
                    appendLine("TITLE", asString3, !VCardUtils.containsOnlyPrintableAscii(asString3), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString3));
                }
            }
        }
        return this;
    }

    public VCardBuilder appendPhotos(List<ContentValues> list) {
        byte[] asByteArray;
        if (list != null) {
            for (ContentValues contentValues : list) {
                if (contentValues != null && (asByteArray = contentValues.getAsByteArray("data15")) != null) {
                    String guessImageType = VCardUtils.guessImageType(asByteArray);
                    if (guessImageType == null) {
                        Log.d("vCard", "Unknown photo type. Ignored.");
                    } else {
                        String str = new String(Base64.encode(asByteArray, 2));
                        if (!TextUtils.isEmpty(str)) {
                            appendPhotoLine(str, guessImageType);
                        }
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendNotes(List<ContentValues> list) {
        if (list != null) {
            boolean z = false;
            if (this.mOnlyOneNoteFieldIsAvailable) {
                StringBuilder sb = new StringBuilder();
                Iterator<ContentValues> it = list.iterator();
                boolean z2 = true;
                while (it.hasNext()) {
                    String asString = it.next().getAsString("data1");
                    if (asString == null) {
                        asString = "";
                    }
                    if (asString.length() > 0) {
                        if (z2) {
                            z2 = false;
                        } else {
                            sb.append('\n');
                        }
                        sb.append(asString);
                    }
                }
                String sb2 = sb.toString();
                boolean z3 = !VCardUtils.containsOnlyPrintableAscii(sb2);
                if (this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(sb2)) {
                    z = true;
                }
                appendLine("NOTE", sb2, z3, z);
            } else {
                Iterator<ContentValues> it2 = list.iterator();
                while (it2.hasNext()) {
                    String asString2 = it2.next().getAsString("data1");
                    if (!TextUtils.isEmpty(asString2)) {
                        appendLine("NOTE", asString2, !VCardUtils.containsOnlyPrintableAscii(asString2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(asString2));
                    }
                }
            }
        }
        return this;
    }

    public VCardBuilder appendEvents(List<ContentValues> list) {
        if (list != null) {
            Iterator<ContentValues> it = list.iterator();
            String str = null;
            String str2 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ContentValues next = it.next();
                if (next != null) {
                    Integer asInteger = next.getAsInteger("data2");
                    if ((asInteger != null ? asInteger.intValue() : 2) == 3) {
                        String asString = next.getAsString("data1");
                        if (asString == null) {
                            continue;
                        } else {
                            Integer asInteger2 = next.getAsInteger("is_super_primary");
                            if (asInteger2 != null && asInteger2.intValue() > 0) {
                                str = asString;
                                break;
                            }
                            Integer asInteger3 = next.getAsInteger("is_primary");
                            if (asInteger3 != null && asInteger3.intValue() > 0) {
                                str = asString;
                            } else if (str2 == null) {
                                str2 = asString;
                            }
                        }
                    } else if (this.mUsesAndroidProperty) {
                        appendAndroidSpecificProperty("vnd.android.cursor.item/contact_event", next);
                    }
                }
            }
            if (str != null) {
                appendLineWithCharsetAndQPDetection("BDAY", str.trim());
            } else if (str2 != null) {
                appendLineWithCharsetAndQPDetection("BDAY", str2.trim());
            }
        }
        return this;
    }

    public VCardBuilder appendRelation(List<ContentValues> list) {
        if (this.mUsesAndroidProperty && list != null) {
            for (ContentValues contentValues : list) {
                if (contentValues != null) {
                    appendAndroidSpecificProperty("vnd.android.cursor.item/relation", contentValues);
                }
            }
        }
        return this;
    }

    public void appendPostalLine(int i, String str, ContentValues contentValues, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        String str2;
        PostalStruct tryConstructPostalStruct = tryConstructPostalStruct(contentValues);
        if (tryConstructPostalStruct != null) {
            z3 = tryConstructPostalStruct.reallyUseQuotedPrintable;
            z4 = tryConstructPostalStruct.appendCharset;
            str2 = tryConstructPostalStruct.addressData;
        } else {
            if (!z2) {
                return;
            }
            str2 = "";
            z3 = false;
            z4 = false;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add("PREF");
        }
        if (i != 0) {
            if (i == 1) {
                arrayList.add("HOME");
            } else if (i == 2) {
                arrayList.add("WORK");
            } else if (i != 3) {
                Log.e("vCard", "Unknown StructuredPostal type: " + i);
            }
        } else if (!TextUtils.isEmpty(str) && VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
            arrayList.add("X-" + str);
        }
        this.mBuilder.append("ADR");
        if (!arrayList.isEmpty()) {
            this.mBuilder.append(";");
            appendTypeParameters(arrayList);
        }
        if (z4) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z3) {
            this.mBuilder.append(";");
            this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
        }
        this.mBuilder.append(":");
        this.mBuilder.append(str2);
        this.mBuilder.append("\r\n");
    }

    public void appendEmailLine(int i, String str, String str2, boolean z) {
        String str3 = "CELL";
        if (i != 0) {
            if (i == 1) {
                str3 = "HOME";
            } else if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        Log.e("vCard", "Unknown Email type: " + i);
                    }
                }
                str3 = null;
            } else {
                str3 = "WORK";
            }
        } else if (!VCardUtils.isMobilePhoneLabel(str)) {
            if (!TextUtils.isEmpty(str) && VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
                str3 = "X-" + str;
            }
            str3 = null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add("PREF");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3);
        }
        appendLineWithCharsetAndQPDetection("EMAIL", arrayList, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void appendTelLine(Integer num, String str, String str2, boolean z) {
        this.mBuilder.append("TEL");
        this.mBuilder.append(";");
        int intValue = num == null ? 7 : num.intValue();
        ArrayList arrayList = new ArrayList();
        switch (intValue) {
            case 0:
                if (TextUtils.isEmpty(str)) {
                    arrayList.add("VOICE");
                    break;
                } else if (VCardUtils.isMobilePhoneLabel(str)) {
                    arrayList.add("CELL");
                    break;
                } else if (this.mIsV30OrV40) {
                    arrayList.add(str);
                    break;
                } else {
                    String upperCase = str.toUpperCase();
                    if (VCardUtils.isValidInV21ButUnknownToContactsPhoteType(upperCase)) {
                        arrayList.add(upperCase);
                        break;
                    } else if (VCardUtils.containsOnlyAlphaDigitHyphen(str)) {
                        arrayList.add("X-" + str);
                        break;
                    }
                }
                break;
            case 1:
                arrayList.addAll(Arrays.asList("HOME"));
                break;
            case 2:
                arrayList.add("CELL");
                break;
            case 3:
                arrayList.addAll(Arrays.asList("WORK"));
                break;
            case 4:
                arrayList.addAll(Arrays.asList("WORK", "FAX"));
                break;
            case 5:
                arrayList.addAll(Arrays.asList("HOME", "FAX"));
                break;
            case 6:
                if (this.mIsDoCoMo) {
                    arrayList.add("VOICE");
                    break;
                } else {
                    arrayList.add("PAGER");
                    break;
                }
            case 7:
                arrayList.add("VOICE");
                break;
            case 9:
                arrayList.add("CAR");
                break;
            case 10:
                arrayList.add("WORK");
                z = true;
                break;
            case 11:
                arrayList.add("ISDN");
                break;
            case 12:
                z = true;
                break;
            case 13:
                arrayList.add("FAX");
                break;
            case 15:
                arrayList.add("TLX");
                break;
            case 17:
                arrayList.addAll(Arrays.asList("WORK", "CELL"));
                break;
            case 18:
                arrayList.add("WORK");
                if (this.mIsDoCoMo) {
                    arrayList.add("VOICE");
                    break;
                } else {
                    arrayList.add("PAGER");
                    break;
                }
            case 20:
                arrayList.add("MSG");
                break;
        }
        if (z) {
            arrayList.add("PREF");
        }
        if (arrayList.isEmpty()) {
            appendUncommonPhoneType(this.mBuilder, Integer.valueOf(intValue));
        } else {
            appendTypeParameters(arrayList);
        }
        this.mBuilder.append(":");
        this.mBuilder.append(str2);
        this.mBuilder.append("\r\n");
    }

    private void appendUncommonPhoneType(StringBuilder sb, Integer num) {
        if (this.mIsDoCoMo) {
            sb.append("VOICE");
            return;
        }
        String phoneTypeString = VCardUtils.getPhoneTypeString(num);
        if (phoneTypeString != null) {
            appendTypeParameter(phoneTypeString);
            return;
        }
        Log.e("vCard", "Unknown or unsupported (by vCard) Phone type: " + num);
    }

    public void appendPhotoLine(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("PHOTO");
        sb.append(";");
        if (this.mIsV30OrV40) {
            sb.append("ENCODING=B");
        } else {
            sb.append("ENCODING=BASE64");
        }
        sb.append(";");
        appendTypeParameter(sb, str2);
        sb.append(":");
        sb.append(str);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        int length = sb2.length();
        int i = 73;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            sb3.append(sb2.charAt(i3));
            i2++;
            if (i2 > i) {
                sb3.append("\r\n");
                sb3.append(" ");
                i = 72;
                i2 = 0;
            }
        }
        this.mBuilder.append(sb3.toString());
        this.mBuilder.append("\r\n");
        this.mBuilder.append("\r\n");
    }

    public VCardBuilder appendSipAddresses(List<ContentValues> list) {
        boolean z;
        if (!this.mIsV30OrV40) {
            z = this.mUsesDefactProperty;
            return this;
        }
        if (list != null) {
            Iterator<ContentValues> it = list.iterator();
            while (it.hasNext()) {
                String asString = it.next().getAsString("data1");
                if (!TextUtils.isEmpty(asString)) {
                    if (z) {
                        if (asString.startsWith("sip:")) {
                            if (asString.length() != 4) {
                                asString = asString.substring(4);
                            }
                        }
                        appendLineWithCharsetAndQPDetection("X-SIP", asString);
                    } else {
                        if (!asString.startsWith("sip:")) {
                            asString = "sip:" + asString;
                        }
                        appendLineWithCharsetAndQPDetection(VCardConfig.isVersion40(this.mVCardType) ? "TEL" : "IMPP", asString);
                    }
                }
            }
        }
        return this;
    }

    public void appendAndroidSpecificProperty(String str, ContentValues contentValues) {
        String escapeCharacters;
        if (sAllowedAndroidPropertySet.contains(str)) {
            ArrayList<String> arrayList = new ArrayList();
            for (int i = 1; i <= 15; i++) {
                String asString = contentValues.getAsString("data" + i);
                if (asString == null) {
                    asString = "";
                }
                arrayList.add(asString);
            }
            boolean z = this.mShouldAppendCharsetParam && !VCardUtils.containsOnlyNonCrLfPrintableAscii(arrayList);
            boolean z2 = this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(arrayList);
            this.mBuilder.append("X-ANDROID-CUSTOM");
            if (z) {
                this.mBuilder.append(";");
                this.mBuilder.append(this.mVCardCharsetParameter);
            }
            if (z2) {
                this.mBuilder.append(";");
                this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
            }
            this.mBuilder.append(":");
            this.mBuilder.append(str);
            for (String str2 : arrayList) {
                if (z2) {
                    escapeCharacters = encodeQuotedPrintable(str2);
                } else {
                    escapeCharacters = escapeCharacters(str2);
                }
                this.mBuilder.append(";");
                this.mBuilder.append(escapeCharacters);
            }
            this.mBuilder.append("\r\n");
        }
    }

    public void appendLineWithCharsetAndQPDetection(String str, String str2) {
        appendLineWithCharsetAndQPDetection(str, null, str2);
    }

    public void appendLineWithCharsetAndQPDetection(String str, List<String> list, String str2) {
        appendLine(str, list, str2, !VCardUtils.containsOnlyPrintableAscii(str2), this.mShouldUseQuotedPrintable && !VCardUtils.containsOnlyNonCrLfPrintableAscii(str2));
    }

    public void appendLine(String str, String str2) {
        appendLine(str, str2, false, false);
    }

    public void appendLine(String str, String str2, boolean z, boolean z2) {
        appendLine(str, null, str2, z, z2);
    }

    public void appendLine(String str, List<String> list, String str2, boolean z, boolean z2) {
        String escapeCharacters;
        this.mBuilder.append(str);
        if (list != null && list.size() > 0) {
            this.mBuilder.append(";");
            appendTypeParameters(list);
        }
        if (z) {
            this.mBuilder.append(";");
            this.mBuilder.append(this.mVCardCharsetParameter);
        }
        if (z2) {
            this.mBuilder.append(";");
            this.mBuilder.append("ENCODING=QUOTED-PRINTABLE");
            escapeCharacters = encodeQuotedPrintable(str2);
        } else {
            escapeCharacters = escapeCharacters(str2);
        }
        this.mBuilder.append(":");
        this.mBuilder.append(escapeCharacters);
        this.mBuilder.append("\r\n");
    }

    private void appendTypeParameters(List<String> list) {
        String stringAsV30ParamValue;
        boolean z = true;
        for (String str : list) {
            if (VCardConfig.isVersion30(this.mVCardType) || VCardConfig.isVersion40(this.mVCardType)) {
                if (VCardConfig.isVersion40(this.mVCardType)) {
                    stringAsV30ParamValue = VCardUtils.toStringAsV40ParamValue(str);
                } else {
                    stringAsV30ParamValue = VCardUtils.toStringAsV30ParamValue(str);
                }
                if (!TextUtils.isEmpty(stringAsV30ParamValue)) {
                    if (z) {
                        z = false;
                    } else {
                        this.mBuilder.append(";");
                    }
                    appendTypeParameter(stringAsV30ParamValue);
                }
            } else if (VCardUtils.isV21Word(str)) {
                if (z) {
                    z = false;
                } else {
                    this.mBuilder.append(";");
                }
                appendTypeParameter(str);
            }
        }
    }

    private void appendTypeParameter(String str) {
        appendTypeParameter(this.mBuilder, str);
    }

    private void appendTypeParameter(StringBuilder sb, String str) {
        if (VCardConfig.isVersion40(this.mVCardType) || ((VCardConfig.isVersion30(this.mVCardType) || this.mAppendTypeParamName) && !this.mIsDoCoMo)) {
            sb.append("TYPE");
            sb.append("=");
        }
        sb.append(str);
    }

    private boolean shouldAppendCharsetParam(String... strArr) {
        if (!this.mShouldAppendCharsetParam) {
            return false;
        }
        for (String str : strArr) {
            if (!VCardUtils.containsOnlyPrintableAscii(str)) {
                return true;
            }
        }
        return false;
    }

    private String encodeQuotedPrintable(String str) {
        byte[] bytes;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            bytes = str.getBytes(this.mCharset);
        } catch (UnsupportedEncodingException unused) {
            Log.e("vCard", "Charset " + this.mCharset + " cannot be used. Try default charset");
            bytes = str.getBytes();
        }
        int i = 0;
        while (true) {
            int i2 = 0;
            while (i < bytes.length) {
                sb.append(String.format("=%02X", Byte.valueOf(bytes[i])));
                i++;
                i2 += 3;
                if (i2 >= 67) {
                    break;
                }
            }
            return sb.toString();
            sb.append("=\r\n");
        }
    }

    private String escapeCharacters(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '\n') {
                if (charAt != '\r') {
                    if (charAt != ',') {
                        if (charAt != '>') {
                            if (charAt != '\\') {
                                if (charAt == ';') {
                                    sb.append('\\');
                                    sb.append(';');
                                } else if (charAt != '<') {
                                    sb.append(charAt);
                                }
                            } else if (this.mIsV30OrV40) {
                                sb.append("\\\\");
                            }
                        }
                        if (this.mIsDoCoMo) {
                            sb.append('\\');
                            sb.append(charAt);
                        } else {
                            sb.append(charAt);
                        }
                    } else if (this.mIsV30OrV40) {
                        sb.append("\\,");
                    } else {
                        sb.append(charAt);
                    }
                } else if (i + 1 < length && str.charAt(i) == '\n') {
                }
            }
            sb.append("\\n");
        }
        return sb.toString();
    }

    public String toString() {
        if (!this.mEndAppended) {
            if (this.mIsDoCoMo) {
                appendLine("X-CLASS", "PUBLIC");
                appendLine("X-REDUCTION", "");
                appendLine("X-NO", "");
                appendLine("X-DCM-HMN-MODE", "");
            }
            appendLine("END", "VCARD");
            this.mEndAppended = true;
        }
        return this.mBuilder.toString();
    }
}
