package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavDeepLink;
import androidx.room.Room;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexKt;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavDeepLink {
    public final Lazy fragArgs$delegate;
    public final Lazy fragArgsAndRegex$delegate;
    public final SynchronizedLazyImpl fragPattern$delegate;
    public final Lazy fragRegex$delegate;
    public final boolean isExactDeepLink;
    public final SynchronizedLazyImpl isParameterizedQuery$delegate;
    public boolean isSingleQueryParamValueOnly;
    public final ArrayList pathArgs;
    public final SynchronizedLazyImpl pathPattern$delegate;
    public final String pathRegex;
    public final Lazy queryArgsMap$delegate;
    public final String uriPattern;
    public static final Regex SCHEME_PATTERN = new Regex("^[a-zA-Z]+[+\\w\\-.]*:");
    public static final Regex FILL_IN_PATTERN = new Regex("\\{(.+?)\\}");
    public static final Regex SCHEME_REGEX = new Regex("http[s]?://");
    public static final Regex WILDCARD_REGEX = new Regex(".*");
    public static final Regex PATH_REGEX = new Regex("([^/]*?|)");
    public static final Regex QUERY_PATTERN = new Regex("^[^?#]+\\?([^#]*).*");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ParamQuery {
        public final ArrayList arguments = new ArrayList();
        public String paramRegex;
    }

    public NavDeepLink(String str) {
        this.uriPattern = str;
        ArrayList arrayList = new ArrayList();
        this.pathArgs = arrayList;
        boolean z = false;
        z = false;
        final int i = z ? 1 : 0;
        this.pathPattern$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i2 = i;
                NavDeepLink navDeepLink = this.f$0;
                switch (i2) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i3 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i3) {
                                        String quote = Pattern.quote(str5.substring(i3, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = findNext.getRange().last + 1;
                                }
                                if (i3 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i3));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i2 = 1;
        this.isParameterizedQuery$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i2;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i3 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i3) {
                                        String quote = Pattern.quote(str5.substring(i3, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = findNext.getRange().last + 1;
                                }
                                if (i3 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i3));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final int i3 = 2;
        this.queryArgsMap$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i3;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i4 = 3;
        this.fragArgsAndRegex$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i4;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i5 = 4;
        this.fragArgs$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i5;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i6 = 5;
        this.fragRegex$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i6;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i7 = 6;
        this.fragPattern$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i7;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        final int i8 = 7;
        new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda0
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list;
                int i22 = i8;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str2 = navDeepLink.pathRegex;
                        if (str2 != null) {
                            return new Regex(str2, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    case 1:
                        return Boolean.valueOf(NavDeepLink.QUERY_PATTERN.matches(navDeepLink.uriPattern));
                    case 2:
                        String str3 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            Uri parse = Uri.parse(str3);
                            parse.getClass();
                            for (String str4 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str4);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m("Query parameter ", str4, " must only be present once in ", str3, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str5 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str5 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str5 = str4;
                                }
                                Regex regex = NavDeepLink.FILL_IN_PATTERN;
                                regex.getClass();
                                str5.getClass();
                                Matcher matcher = regex.nativePattern.matcher(str5);
                                matcher.getClass();
                                int i32 = 0;
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str5); findNext != null; findNext = findNext.next()) {
                                    MatchGroup matchGroup = findNext.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (findNext.getRange().first > i32) {
                                        String quote = Pattern.quote(str5.substring(i32, findNext.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = findNext.getRange().last + 1;
                                }
                                if (i32 < str5.length()) {
                                    String quote2 = Pattern.quote(str5.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str4, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str6 = navDeepLink.uriPattern;
                        Uri parse2 = Uri.parse(str6);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str6);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list = (List) pair.first) == null) ? new ArrayList() : list;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str7 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str7 != null) {
                            return new Regex(str7, RegexOption.IGNORE_CASE);
                        }
                        return null;
                    default:
                        return null;
                }
            }
        });
        StringBuilder sb = new StringBuilder("^");
        if (!SCHEME_PATTERN.nativePattern.matcher(str).find()) {
            String pattern = SCHEME_REGEX.nativePattern.pattern();
            pattern.getClass();
            sb.append(pattern);
        }
        Pattern compile = Pattern.compile("(\\?|#|$)");
        compile.getClass();
        Matcher matcher = compile.matcher(str);
        matcher.getClass();
        MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str);
        if (findNext != null) {
            buildRegex(str.substring(0, findNext.getRange().first), arrayList, sb);
            if (!WILDCARD_REGEX.nativePattern.matcher(sb).find() && !PATH_REGEX.nativePattern.matcher(sb).find()) {
                z = true;
            }
            this.isExactDeepLink = z;
            sb.append("($|(\\?(.)*)|(#(.)*))");
        }
        this.pathRegex = saveWildcardInRegex(sb.toString());
    }

    public static void buildRegex(String str, ArrayList arrayList, StringBuilder sb) {
        Regex regex = FILL_IN_PATTERN;
        regex.getClass();
        Matcher matcher = regex.nativePattern.matcher(str);
        matcher.getClass();
        int i = 0;
        for (MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str); findNext != null; findNext = findNext.next()) {
            MatchGroup matchGroup = findNext.groups.get(1);
            matchGroup.getClass();
            arrayList.add(matchGroup.value);
            if (findNext.getRange().first > i) {
                String quote = Pattern.quote(str.substring(i, findNext.getRange().first));
                quote.getClass();
                sb.append(quote);
            }
            String pattern = PATH_REGEX.nativePattern.pattern();
            pattern.getClass();
            sb.append(pattern);
            i = findNext.getRange().last + 1;
        }
        if (i < str.length()) {
            String quote2 = Pattern.quote(str.substring(i));
            quote2.getClass();
            sb.append(quote2);
        }
    }

    public static void parseArgument(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument == null) {
            str.getClass();
            bundle.putString(str, str2);
        } else {
            NavType navType = navArgument.type;
            str.getClass();
            navType.put(bundle, str, navType.mo755parseValue(str2));
        }
    }

    public static String saveWildcardInRegex(String str) {
        return (StringsKt.contains(str, "\\Q", false) && StringsKt.contains(str, "\\E", false)) ? StringsKt__StringsJVMKt.replace$default(str, ".*", "\\E.*\\Q") : StringsKt.contains(str, "\\.\\*", false) ? StringsKt__StringsJVMKt.replace$default(str, "\\.\\*", ".*") : str;
    }

    public final int calculateMatchingPathSegments$navigation_common_release(Uri uri) {
        if (uri == null) {
            return 0;
        }
        List<String> pathSegments = uri.getPathSegments();
        Uri parse = Uri.parse(this.uriPattern);
        parse.getClass();
        return CollectionsKt.intersect(pathSegments, parse.getPathSegments()).size();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        return this.uriPattern.equals(((NavDeepLink) obj).uriPattern);
    }

    public final ArrayList getArgumentsNames$navigation_common_release() {
        Collection values = ((Map) this.queryArgsMap$delegate.getValue()).values();
        ArrayList arrayList = new ArrayList();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, ((ParamQuery) it.next()).arguments);
        }
        return CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) this.pathArgs, (Iterable) arrayList), (Iterable) this.fragArgs$delegate.getValue());
    }

    public final Bundle getMatchingArguments(Uri uri, LinkedHashMap linkedHashMap) {
        MatcherMatchResult matchEntire;
        MatcherMatchResult matchEntire2;
        String str;
        uri.getClass();
        Regex regex = (Regex) this.pathPattern$delegate.getValue();
        if (regex != null && (matchEntire = regex.matchEntire(uri.toString())) != null) {
            Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            if (getMatchingPathArguments(matchEntire, bundleOf, linkedHashMap) && (!((Boolean) this.isParameterizedQuery$delegate.getValue()).booleanValue() || getMatchingQueryArguments(uri, bundleOf, linkedHashMap))) {
                String fragment = uri.getFragment();
                Regex regex2 = (Regex) this.fragPattern$delegate.getValue();
                if (regex2 != null && (matchEntire2 = regex2.matchEntire(String.valueOf(fragment))) != null) {
                    List list = (List) this.fragArgs$delegate.getValue();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                    int i = 0;
                    for (Object obj : list) {
                        int i2 = i + 1;
                        if (i < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        String str2 = (String) obj;
                        MatchGroup matchGroup = matchEntire2.groups.get(i2);
                        if (matchGroup != null) {
                            str = Uri.decode(matchGroup.value);
                            str.getClass();
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            str = "";
                        }
                        try {
                            parseArgument(bundleOf, str2, str, (NavArgument) linkedHashMap.get(str2));
                            arrayList.add(Unit.INSTANCE);
                            i = i2;
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                }
                if (RegexKt.missingRequiredArguments(linkedHashMap, new NavDeepLink$$ExternalSyntheticLambda8(0, bundleOf)).isEmpty()) {
                    return bundleOf;
                }
            }
        }
        return null;
    }

    public final boolean getMatchingPathArguments(MatcherMatchResult matcherMatchResult, Bundle bundle, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = this.pathArgs;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            String str = null;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            String str2 = (String) next;
            MatchGroup matchGroup = matcherMatchResult.groups.get(i2);
            if (matchGroup != null) {
                str = Uri.decode(matchGroup.value);
                str.getClass();
            }
            if (str == null) {
                str = "";
            }
            try {
                parseArgument(bundle, str2, str, (NavArgument) linkedHashMap.get(str2));
                arrayList2.add(Unit.INSTANCE);
                i = i2;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00be A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [int] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r22v0, types: [java.util.LinkedHashMap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean getMatchingQueryArguments(android.net.Uri r20, android.os.Bundle r21, java.util.LinkedHashMap r22) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDeepLink.getMatchingQueryArguments(android.net.Uri, android.os.Bundle, java.util.LinkedHashMap):boolean");
    }

    public final int hashCode() {
        return this.uriPattern.hashCode() * 961;
    }
}
