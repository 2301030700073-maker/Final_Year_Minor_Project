package org.schabi.newpipe.extractor.services.youtube;

import androidx.sqlite.SQLite;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.JavaScript;
import org.schabi.newpipe.extractor.utils.Pair;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class YoutubeSignatureUtils {
    public static final Pattern[] FUNCTION_REGEXES = {Pattern.compile("\\b(?:[a-zA-Z0-9_$]+)&&\\((?:[a-zA-Z0-9_$]+)=([a-zA-Z0-9_$]{2,})\\((\\d+,)decodeURIComponent\\((?:[a-zA-Z0-9_$]+)\\)\\)"), Pattern.compile("\\b(?:[a-zA-Z0-9_$]+)&&\\((?:[a-zA-Z0-9_$]+)=([a-zA-Z0-9_$]{2,})\\(decodeURIComponent\\((?:[a-zA-Z0-9_$]+)\\)\\)"), Pattern.compile("\\bm=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(h\\.s\\)\\)"), Pattern.compile("\\bc&&\\(c=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(c\\)\\)"), Pattern.compile("(?:\\b|[^a-zA-Z0-9$])([a-zA-Z0-9$]{2,})\\s*=\\s*function\\(\\s*a\\s*\\)\\s*\\{\\s*a\\s*=\\s*a\\.split\\(\\s*\"\"\\s*\\)"), Pattern.compile("([\\w$]+)\\s*=\\s*function\\((\\w+)\\)\\{\\s*\\2=\\s*\\2\\.split\\(\"\"\\)\\s*;")};
    public static final Pattern SIG_DEOBF_GLOBAL_ARRAY_REGEX = Pattern.compile("(var [A-z]=['\"].*['\"].split\\(\"[;{]\"\\))");
    public static final Pattern SIG_DEOBF_HELPER_OBJ_NAME_REGEX = Pattern.compile("[;,]([A-Za-z0-9_$]{2,})\\[..");

    public static String getDeobfuscationCode(String str) {
        String sb;
        try {
            try {
                Matcher matchMultiplePatterns = Parser.matchMultiplePatterns(FUNCTION_REGEXES, str);
                Pair pair = new Pair(matchMultiplePatterns.group(1), matchMultiplePatterns.groupCount() > 1 ? matchMultiplePatterns.group(2) : "");
                String str2 = (String) pair.getFirst();
                String str3 = (String) pair.getSecond();
                try {
                    String str4 = str2 + "=function";
                    sb = str4.concat(SQLite.matchToClosingBrace(str, str4));
                } catch (Exception unused) {
                    String matchGroup = Parser.matchGroup("(" + Pattern.quote(str2) + "=function\\([a-zA-Z0-9_]+\\)\\{.+?\\})", 1, str);
                    StringBuilder sb2 = new StringBuilder("var ");
                    sb2.append(matchGroup);
                    sb = sb2.toString();
                }
                JavaScript.compileOrThrow(sb);
                return Parser.matchGroup(str, SIG_DEOBF_GLOBAL_ARRAY_REGEX, 1) + ";" + Parser.matchGroup("(var " + Pattern.quote(Parser.matchGroup(sb, SIG_DEOBF_HELPER_OBJ_NAME_REGEX, 1)) + "=\\{(?>.|\\n)+?\\}\\};)", 1, str).replace("\n", "") + sb + ";" + ("function deobfuscate(a){return " + str2 + "(" + str3 + "a);}");
            } catch (Parser.RegexException e) {
                throw new ParsingException("Could not find deobfuscation function with any of the known patterns", e);
            }
        } catch (Exception e2) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse deobfuscation function", e2);
            return null;
        }
    }
}
