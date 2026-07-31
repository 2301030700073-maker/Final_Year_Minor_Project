package org.schabi.newpipe.extractor.utils;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.sqlite.SQLite;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.stream.Collectors;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Document;
import org.jsoup.select.Evaluator;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor$$ExternalSyntheticLambda7;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Parser {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RegexException extends ParsingException {
    }

    public static Map compatParseMap(String str) {
        return (Map) DesugarArrays.stream(str.split("&")).map(new Utils$$ExternalSyntheticLambda1(18)).filter(new Player$$ExternalSyntheticLambda48(1)).collect(Collectors.toMap(new Utils$$ExternalSyntheticLambda1(19), new Utils$$ExternalSyntheticLambda1(20), new StringUtil$$ExternalSyntheticLambda3(1)));
    }

    public static Object getInstanceOf(JsonObject jsonObject, String str, Class cls) {
        Object value = getValue(jsonObject, str);
        if (cls.isInstance(value)) {
            return cls.cast(value);
        }
        throw new ParsingException("Wrong data type at path ".concat(str));
    }

    public static JsonObject getJsonData(String str, String str2) {
        Document parse = Jsoup.parse(str);
        parse.getClass();
        SQLite.notEmpty(str2);
        return (JsonObject) JsonParser.object().from(SQLite.collect(new Evaluator.Id(1, str2.trim(), false), parse).attr(str2));
    }

    public static List getStringListFromJsonArray(JsonArray jsonArray) {
        return (List) Collection.EL.stream(jsonArray).filter(new JsonArray$$ExternalSyntheticLambda0(21)).map(new YoutubeStreamExtractor$$ExternalSyntheticLambda7(5)).collect(Collectors.toList());
    }

    public static Object getValue(JsonObject jsonObject, String str) {
        List asList = Arrays.asList(str.split("\\."));
        Iterator it = asList.subList(0, asList.size() - 1).iterator();
        while (it.hasNext() && (jsonObject = jsonObject.getObject((String) it.next())) != null) {
        }
        if (jsonObject == null) {
            throw new ParsingException("Unable to get ".concat(str));
        }
        V v = jsonObject.get(asList.get(asList.size() - 1));
        if (v != 0) {
            return v;
        }
        throw new ParsingException("Unable to get ".concat(str));
    }

    public static boolean isMatch(String str, Pattern pattern) {
        return pattern.matcher(str).find();
    }

    public static String matchGroup(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(i);
        }
        String m = Modifier.CC.m("Failed to find pattern \"", pattern.pattern(), "\"");
        if (str.length() <= 1024) {
            m = m + " inside of \"" + str + "\"";
        }
        throw new RegexException(m);
    }

    public static Matcher matchMultiplePatterns(Pattern[] patternArr, String str) {
        RegexException regexException = null;
        for (Pattern pattern : patternArr) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher;
            }
            if (regexException == null) {
                regexException = new RegexException(Owner.CC.m("Failed to find pattern \"", pattern.pattern(), "\"", str.length() <= 1000 ? Modifier.CC.m("inside of \"", str, "\"") : ""));
            }
        }
        if (regexException != null) {
            throw regexException;
        }
        throw new RegexException("Empty patterns array passed to matchMultiplePatterns");
    }

    public static JsonObject toJsonObject(String str) {
        try {
            return (JsonObject) JsonParser.object().from(str);
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse JSON", e);
            return null;
        }
    }

    public static String matchGroup(String str, int i, String str2) {
        return matchGroup(str2, Pattern.compile(str), i);
    }
}
