package com.android.vcard;

import android.util.Log;
import com.android.vcard.exception.VCardAgentNotSupportedException;
import com.android.vcard.exception.VCardException;
import com.android.vcard.exception.VCardInvalidCommentLineException;
import com.android.vcard.exception.VCardInvalidLineException;
import com.android.vcard.exception.VCardVersionException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
class VCardParserImpl_V21 {
    private boolean mCanceled;
    protected String mCurrentEncoding;
    protected final String mIntermediateCharset;
    private final List<VCardInterpreter> mInterpreterList;
    protected CustomBufferedReader mReader;
    protected final Set<String> mUnknownTypeSet;
    protected final Set<String> mUnknownValueSet;

    private boolean isAsciiLetter(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    protected int getVersion() {
        return 0;
    }

    protected String getVersionString() {
        return "2.1";
    }

    protected String maybeUnescapeText(String str) {
        return str;
    }

    protected static final class CustomBufferedReader extends BufferedReader {
        private String mNextLine;
        private boolean mNextLineIsValid;
        private long mTime;

        public CustomBufferedReader(Reader reader) {
            super(reader);
        }

        @Override // java.io.BufferedReader
        public String readLine() throws IOException {
            if (this.mNextLineIsValid) {
                String str = this.mNextLine;
                this.mNextLine = null;
                this.mNextLineIsValid = false;
                return str;
            }
            long currentTimeMillis = System.currentTimeMillis();
            String readLine = super.readLine();
            this.mTime += System.currentTimeMillis() - currentTimeMillis;
            return readLine;
        }

        public String peekLine() throws IOException {
            if (!this.mNextLineIsValid) {
                long currentTimeMillis = System.currentTimeMillis();
                String readLine = super.readLine();
                this.mTime += System.currentTimeMillis() - currentTimeMillis;
                this.mNextLine = readLine;
                this.mNextLineIsValid = true;
            }
            return this.mNextLine;
        }
    }

    public VCardParserImpl_V21() {
        this(VCardConfig.VCARD_TYPE_DEFAULT);
    }

    public VCardParserImpl_V21(int i) {
        this.mInterpreterList = new ArrayList();
        this.mUnknownTypeSet = new HashSet();
        this.mUnknownValueSet = new HashSet();
        this.mIntermediateCharset = "ISO-8859-1";
    }

    protected boolean isValidPropertyName(String str) {
        if (getKnownPropertyNameSet().contains(str.toUpperCase()) || str.startsWith("X-") || this.mUnknownTypeSet.contains(str)) {
            return true;
        }
        this.mUnknownTypeSet.add(str);
        Log.w("vCard", "Property name unsupported by vCard 2.1: " + str);
        return true;
    }

    protected String getLine() throws IOException {
        return this.mReader.readLine();
    }

    protected String peekLine() throws IOException {
        return this.mReader.peekLine();
    }

    protected String getNonEmptyLine() throws IOException, VCardException {
        String line;
        do {
            line = getLine();
            if (line == null) {
                throw new VCardException("Reached end of buffer.");
            }
        } while (line.trim().length() <= 0);
        return line;
    }

    private boolean parseOneVCard() throws IOException, VCardException {
        this.mCurrentEncoding = "8BIT";
        if (!readBeginVCard(true)) {
            return false;
        }
        Iterator<VCardInterpreter> it = this.mInterpreterList.iterator();
        while (it.hasNext()) {
            it.next().onEntryStarted();
        }
        parseItems();
        Iterator<VCardInterpreter> it2 = this.mInterpreterList.iterator();
        while (it2.hasNext()) {
            it2.next().onEntryEnded();
        }
        return true;
    }

    protected boolean readBeginVCard(boolean z) throws IOException, VCardException {
        while (true) {
            String line = getLine();
            if (line == null) {
                return false;
            }
            if (line.trim().length() > 0) {
                String[] split = line.split(":", 2);
                if (split.length == 2 && split[0].trim().equalsIgnoreCase("BEGIN") && split[1].trim().equalsIgnoreCase("VCARD")) {
                    return true;
                }
                if (!z) {
                    throw new VCardException("Expected String \"BEGIN:VCARD\" did not come (Instead, \"" + line + "\" came)");
                }
                if (!z) {
                    throw new VCardException("Reached where must not be reached.");
                }
            }
        }
    }

    protected void parseItems() throws IOException, VCardException {
        boolean z;
        try {
            z = parseItem();
        } catch (VCardInvalidCommentLineException unused) {
            Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
            z = false;
        }
        while (!z) {
            try {
                z = parseItem();
            } catch (VCardInvalidCommentLineException unused2) {
                Log.e("vCard", "Invalid line which looks like some comment was found. Ignored.");
            }
        }
    }

    protected boolean parseItem() throws IOException, VCardException {
        this.mCurrentEncoding = "8BIT";
        VCardProperty constructPropertyData = constructPropertyData(getNonEmptyLine());
        String upperCase = constructPropertyData.getName().toUpperCase();
        String rawValue = constructPropertyData.getRawValue();
        if (upperCase.equals("BEGIN")) {
            if (rawValue.equalsIgnoreCase("VCARD")) {
                handleNest();
                return false;
            }
            throw new VCardException("Unknown BEGIN type: " + rawValue);
        }
        if (upperCase.equals("END")) {
            if (rawValue.equalsIgnoreCase("VCARD")) {
                return true;
            }
            throw new VCardException("Unknown END type: " + rawValue);
        }
        parseItemInter(constructPropertyData, upperCase);
        return false;
    }

    private void parseItemInter(VCardProperty vCardProperty, String str) throws IOException, VCardException {
        String rawValue = vCardProperty.getRawValue();
        if (str.equals("AGENT")) {
            handleAgent(vCardProperty);
            return;
        }
        if (isValidPropertyName(str)) {
            if (str.equals("VERSION") && !rawValue.equals(getVersionString())) {
                throw new VCardVersionException("Incompatible version: " + rawValue + " != " + getVersionString());
            }
            handlePropertyValue(vCardProperty, str);
            return;
        }
        throw new VCardException("Unknown property name: \"" + str + "\"");
    }

    private void handleNest() throws IOException, VCardException {
        Iterator<VCardInterpreter> it = this.mInterpreterList.iterator();
        while (it.hasNext()) {
            it.next().onEntryStarted();
        }
        parseItems();
        Iterator<VCardInterpreter> it2 = this.mInterpreterList.iterator();
        while (it2.hasNext()) {
            it2.next().onEntryEnded();
        }
    }

    protected VCardProperty constructPropertyData(String str) throws VCardException {
        VCardProperty vCardProperty = new VCardProperty();
        int length = str.length();
        int i = 0;
        if (length > 0 && str.charAt(0) == '#') {
            throw new VCardInvalidCommentLineException();
        }
        char c = 0;
        int i2 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (c != 0) {
                if (c != 1) {
                    if (c == 2 && charAt == '\"') {
                        if ("2.1".equalsIgnoreCase(getVersionString())) {
                            Log.w("vCard", "Double-quoted params found in vCard 2.1. Silently allow it");
                        }
                        c = 1;
                    }
                } else if (charAt == '\"') {
                    if ("2.1".equalsIgnoreCase(getVersionString())) {
                        Log.w("vCard", "Double-quoted params found in vCard 2.1. Silently allow it");
                    }
                    c = 2;
                } else if (charAt == ';') {
                    handleParams(vCardProperty, str.substring(i2, i));
                    i2 = i + 1;
                } else if (charAt == ':') {
                    handleParams(vCardProperty, str.substring(i2, i));
                    vCardProperty.setRawValue(i < length - 1 ? str.substring(i + 1) : "");
                    return vCardProperty;
                }
            } else {
                if (charAt == ':') {
                    vCardProperty.setName(str.substring(i2, i));
                    vCardProperty.setRawValue(i < length - 1 ? str.substring(i + 1) : "");
                    return vCardProperty;
                }
                if (charAt == '.') {
                    String substring = str.substring(i2, i);
                    if (substring.length() == 0) {
                        Log.w("vCard", "Empty group found. Ignoring.");
                    } else {
                        vCardProperty.addGroup(substring);
                    }
                    i2 = i + 1;
                } else if (charAt == ';') {
                    vCardProperty.setName(str.substring(i2, i));
                    i2 = i + 1;
                    c = 1;
                }
            }
            i++;
        }
        throw new VCardInvalidLineException("Invalid line: \"" + str + "\"");
    }

    protected void handleParams(VCardProperty vCardProperty, String str) throws VCardException {
        String[] split = str.split("=", 2);
        if (split.length == 2) {
            String upperCase = split[0].trim().toUpperCase();
            String trim = split[1].trim();
            if (upperCase.equals("TYPE")) {
                handleType(vCardProperty, trim);
                return;
            }
            if (upperCase.equals("VALUE")) {
                handleValue(vCardProperty, trim);
                return;
            }
            if (upperCase.equals("ENCODING")) {
                handleEncoding(vCardProperty, trim.toUpperCase());
                return;
            }
            if (upperCase.equals("CHARSET")) {
                handleCharset(vCardProperty, trim);
                return;
            }
            if (upperCase.equals("LANGUAGE")) {
                handleLanguage(vCardProperty, trim);
                return;
            }
            if (upperCase.startsWith("X-")) {
                handleAnyParam(vCardProperty, upperCase, trim);
                return;
            }
            throw new VCardException("Unknown type \"" + upperCase + "\"");
        }
        handleParamWithoutName(vCardProperty, split[0]);
    }

    protected void handleParamWithoutName(VCardProperty vCardProperty, String str) {
        handleType(vCardProperty, str);
    }

    protected void handleType(VCardProperty vCardProperty, String str) {
        if (!getKnownTypeSet().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.mUnknownTypeSet.contains(str)) {
            this.mUnknownTypeSet.add(str);
            Log.w("vCard", String.format("TYPE unsupported by %s: ", Integer.valueOf(getVersion()), str));
        }
        vCardProperty.addParameter("TYPE", str);
    }

    protected void handleValue(VCardProperty vCardProperty, String str) {
        if (!getKnownValueSet().contains(str.toUpperCase()) && !str.startsWith("X-") && !this.mUnknownValueSet.contains(str)) {
            this.mUnknownValueSet.add(str);
            Log.w("vCard", String.format("The value unsupported by TYPE of %s: ", Integer.valueOf(getVersion()), str));
        }
        vCardProperty.addParameter("VALUE", str);
    }

    protected void handleEncoding(VCardProperty vCardProperty, String str) throws VCardException {
        if (getAvailableEncodingSet().contains(str) || str.startsWith("X-")) {
            vCardProperty.addParameter("ENCODING", str);
            this.mCurrentEncoding = str.toUpperCase();
        } else {
            throw new VCardException("Unknown encoding \"" + str + "\"");
        }
    }

    protected void handleCharset(VCardProperty vCardProperty, String str) {
        vCardProperty.addParameter("CHARSET", str);
    }

    protected void handleLanguage(VCardProperty vCardProperty, String str) throws VCardException {
        String[] split = str.split("-");
        if (split.length != 2) {
            throw new VCardException("Invalid Language: \"" + str + "\"");
        }
        String str2 = split[0];
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            if (!isAsciiLetter(str2.charAt(i))) {
                throw new VCardException("Invalid Language: \"" + str + "\"");
            }
        }
        String str3 = split[1];
        int length2 = str3.length();
        for (int i2 = 0; i2 < length2; i2++) {
            if (!isAsciiLetter(str3.charAt(i2))) {
                throw new VCardException("Invalid Language: \"" + str + "\"");
            }
        }
        vCardProperty.addParameter("LANGUAGE", str);
    }

    protected void handleAnyParam(VCardProperty vCardProperty, String str, String str2) {
        vCardProperty.addParameter(str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f0, code lost:
    
        r0 = r2.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handlePropertyValue(com.android.vcard.VCardProperty r9, java.lang.String r10) throws java.io.IOException, com.android.vcard.exception.VCardException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.handlePropertyValue(com.android.vcard.VCardProperty, java.lang.String):void");
    }

    private void handleAdrOrgN(VCardProperty vCardProperty, String str, String str2, String str3) throws VCardException, IOException {
        ArrayList arrayList = new ArrayList();
        if (this.mCurrentEncoding.equals("QUOTED-PRINTABLE")) {
            String quotedPrintablePart = getQuotedPrintablePart(str);
            vCardProperty.setRawValue(quotedPrintablePart);
            Iterator<String> it = VCardUtils.constructListFromValue(quotedPrintablePart, getVersion()).iterator();
            while (it.hasNext()) {
                arrayList.add(VCardUtils.parseQuotedPrintable(it.next(), false, str2, str3));
            }
        } else {
            Iterator<String> it2 = VCardUtils.constructListFromValue(VCardUtils.convertStringCharset(getPotentialMultiline(str), str2, str3), getVersion()).iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
        vCardProperty.setValues(arrayList);
        Iterator<VCardInterpreter> it3 = this.mInterpreterList.iterator();
        while (it3.hasNext()) {
            it3.next().onPropertyCreated(vCardProperty);
        }
    }

    private String getQuotedPrintablePart(String str) throws IOException, VCardException {
        if (!str.trim().endsWith("=")) {
            return str;
        }
        int length = str.length() - 1;
        while (str.charAt(length) != '=') {
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, length + 1));
        sb.append("\r\n");
        while (true) {
            String line = getLine();
            if (line == null) {
                throw new VCardException("File ended during parsing a Quoted-Printable String");
            }
            if (line.trim().endsWith("=")) {
                int length2 = line.length() - 1;
                while (line.charAt(length2) != '=') {
                }
                sb.append(line.substring(0, length2 + 1));
                sb.append("\r\n");
            } else {
                sb.append(line);
                return sb.toString();
            }
        }
    }

    private String getPotentialMultiline(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        while (true) {
            String peekLine = peekLine();
            if (peekLine == null || peekLine.length() == 0 || getPropertyNameUpperCase(peekLine) != null) {
                break;
            }
            getLine();
            sb.append(" ");
            sb.append(peekLine);
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
    
        return r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        android.util.Log.w("vCard", "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property.");
        android.util.Log.w("vCard", "Problematic line: " + r5.trim());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String getBase64(java.lang.String r5) throws java.io.IOException, com.android.vcard.exception.VCardException {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r5)
        L8:
            java.lang.String r5 = r4.peekLine()
            if (r5 == 0) goto L5b
            java.lang.String r1 = r4.getPropertyNameUpperCase(r5)
            java.util.Set r2 = r4.getKnownPropertyNameSet()
            boolean r2 = r2.contains(r1)
            if (r2 != 0) goto L37
            java.lang.String r2 = "X-ANDROID-CUSTOM"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L25
            goto L37
        L25:
            r4.getLine()
            int r1 = r5.length()
            if (r1 != 0) goto L2f
            goto L56
        L2f:
            java.lang.String r5 = r5.trim()
            r0.append(r5)
            goto L8
        L37:
            java.lang.String r1 = "vCard"
            java.lang.String r2 = "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."
            android.util.Log.w(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Problematic line: "
            r2.append(r3)
            java.lang.String r5 = r5.trim()
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            android.util.Log.w(r1, r5)
        L56:
            java.lang.String r5 = r0.toString()
            return r5
        L5b:
            com.android.vcard.exception.VCardException r5 = new com.android.vcard.exception.VCardException
            java.lang.String r0 = "File ended during parsing BASE64 binary"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.getBase64(java.lang.String):java.lang.String");
    }

    private String getPropertyNameUpperCase(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf <= -1) {
            return null;
        }
        int indexOf2 = str.indexOf(";");
        if (indexOf == -1) {
            indexOf = indexOf2;
        } else if (indexOf2 != -1) {
            indexOf = Math.min(indexOf, indexOf2);
        }
        return str.substring(0, indexOf).toUpperCase();
    }

    protected void handleAgent(VCardProperty vCardProperty) throws VCardException {
        if (!vCardProperty.getRawValue().toUpperCase().contains("BEGIN:VCARD")) {
            Iterator<VCardInterpreter> it = this.mInterpreterList.iterator();
            while (it.hasNext()) {
                it.next().onPropertyCreated(vCardProperty);
            }
            return;
        }
        throw new VCardAgentNotSupportedException("AGENT Property is not supported now.");
    }

    static String unescapeCharacter(char c) {
        if (c == '\\' || c == ';' || c == ':' || c == ',') {
            return String.valueOf(c);
        }
        return null;
    }

    protected Set<String> getKnownPropertyNameSet() {
        return VCardParser_V21.sKnownPropertyNameSet;
    }

    protected Set<String> getKnownTypeSet() {
        return VCardParser_V21.sKnownTypeSet;
    }

    protected Set<String> getKnownValueSet() {
        return VCardParser_V21.sKnownValueSet;
    }

    protected Set<String> getAvailableEncodingSet() {
        return VCardParser_V21.sAvailableEncoding;
    }

    public void addInterpreter(VCardInterpreter vCardInterpreter) {
        this.mInterpreterList.add(vCardInterpreter);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x002e, code lost:
    
        android.util.Log.i("vCard", "Cancel request has come. exitting parse operation.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parse(java.io.InputStream r3) throws java.io.IOException, com.android.vcard.exception.VCardException {
        /*
            r2 = this;
            if (r3 == 0) goto L58
            java.io.InputStreamReader r0 = new java.io.InputStreamReader
            java.lang.String r1 = r2.mIntermediateCharset
            r0.<init>(r3, r1)
            com.android.vcard.VCardParserImpl_V21$CustomBufferedReader r3 = new com.android.vcard.VCardParserImpl_V21$CustomBufferedReader
            r3.<init>(r0)
            r2.mReader = r3
            java.lang.System.currentTimeMillis()
            java.util.List<com.android.vcard.VCardInterpreter> r3 = r2.mInterpreterList
            java.util.Iterator r3 = r3.iterator()
        L19:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L29
            java.lang.Object r0 = r3.next()
            com.android.vcard.VCardInterpreter r0 = (com.android.vcard.VCardInterpreter) r0
            r0.onVCardStarted()
            goto L19
        L29:
            monitor-enter(r2)
            boolean r3 = r2.mCanceled     // Catch: java.lang.Throwable -> L55
            if (r3 == 0) goto L37
            java.lang.String r3 = "vCard"
            java.lang.String r0 = "Cancel request has come. exitting parse operation."
            android.util.Log.i(r3, r0)     // Catch: java.lang.Throwable -> L55
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
            goto L3e
        L37:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
            boolean r3 = r2.parseOneVCard()
            if (r3 != 0) goto L29
        L3e:
            java.util.List<com.android.vcard.VCardInterpreter> r3 = r2.mInterpreterList
            java.util.Iterator r3 = r3.iterator()
        L44:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L54
            java.lang.Object r0 = r3.next()
            com.android.vcard.VCardInterpreter r0 = (com.android.vcard.VCardInterpreter) r0
            r0.onVCardEnded()
            goto L44
        L54:
            return
        L55:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L55
            throw r3
        L58:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r0 = "InputStream must not be null."
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.vcard.VCardParserImpl_V21.parse(java.io.InputStream):void");
    }

    public final synchronized void cancel() {
        Log.i("vCard", "ParserImpl received cancel operation.");
        this.mCanceled = true;
    }
}
