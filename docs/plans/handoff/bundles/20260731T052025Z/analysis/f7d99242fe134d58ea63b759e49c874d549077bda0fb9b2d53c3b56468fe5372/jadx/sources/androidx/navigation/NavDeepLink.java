package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.navigation.NavDeepLink;
import androidx.work.Data;
import coil3.size.ViewSizeResolver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavDeepLink {
    public final String action;
    public final Lazy fragArgs$delegate;
    public final Lazy fragArgsAndRegex$delegate;
    public final SynchronizedLazyImpl fragPattern$delegate;
    public final Lazy fragRegex$delegate;
    public final boolean isExactDeepLink;
    public final SynchronizedLazyImpl isParameterizedQuery$delegate;
    public boolean isSingleQueryParamValueOnly;
    public final String mimeType;
    public final SynchronizedLazyImpl mimeTypePattern$delegate;
    public final String mimeTypeRegex;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ParamQuery {
        public final ArrayList arguments = new ArrayList();
        public String paramRegex;
    }

    public NavDeepLink(String str, String str2, String str3) {
        List list;
        List list2;
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        ArrayList arrayList = new ArrayList();
        this.pathArgs = arrayList;
        final int i = 0;
        this.pathPattern$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i2 = i;
                NavDeepLink navDeepLink = this.f$0;
                switch (i2) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i3 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i3) {
                                        String quote = Pattern.quote(str8.substring(i3, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = find.getRange().last + 1;
                                }
                                if (i3 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i3));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i2 = 1;
        this.isParameterizedQuery$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i2;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i3 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i3) {
                                        String quote = Pattern.quote(str8.substring(i3, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i3 = find.getRange().last + 1;
                                }
                                if (i3 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i3));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i3 = 2;
        Function0 function0 = new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i3;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.queryArgsMap$delegate = ResultKt.lazy(lazyThreadSafetyMode, function0);
        final int i4 = 3;
        this.fragArgsAndRegex$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i4;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i5 = 4;
        this.fragArgs$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i5;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i6 = 5;
        this.fragRegex$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i6;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i7 = 6;
        this.fragPattern$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i7;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        final int i8 = 7;
        this.mimeTypePattern$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.navigation.NavDeepLink$$ExternalSyntheticLambda1
            public final /* synthetic */ NavDeepLink f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List list3;
                int i22 = i8;
                NavDeepLink navDeepLink = this.f$0;
                switch (i22) {
                    case 0:
                        String str4 = navDeepLink.pathRegex;
                        if (str4 != null) {
                            return new Regex(str4, 0);
                        }
                        return null;
                    case 1:
                        String str5 = navDeepLink.uriPattern;
                        return Boolean.valueOf(str5 != null && NavDeepLink.QUERY_PATTERN.matches(str5));
                    case 2:
                        String str6 = navDeepLink.uriPattern;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (((Boolean) navDeepLink.isParameterizedQuery$delegate.getValue()).booleanValue()) {
                            str6.getClass();
                            Uri parse = Uri.parse(str6);
                            parse.getClass();
                            for (String str7 : parse.getQueryParameterNames()) {
                                StringBuilder sb = new StringBuilder();
                                List<String> queryParameters = parse.getQueryParameters(str7);
                                if (queryParameters.size() > 1) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) ViewSizeResolver.CC.m("Query parameter ", str7, " must only be present once in ", str6, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                                    return null;
                                }
                                String str8 = (String) CollectionsKt.firstOrNull((List) queryParameters);
                                if (str8 == null) {
                                    navDeepLink.isSingleQueryParamValueOnly = true;
                                    str8 = str7;
                                }
                                NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                                int i32 = 0;
                                for (MatcherMatchResult find = NavDeepLink.FILL_IN_PATTERN.find(0, str8); find != null; find = find.next()) {
                                    MatchGroup matchGroup = find.groups.get(1);
                                    matchGroup.getClass();
                                    paramQuery.arguments.add(matchGroup.value);
                                    if (find.getRange().first > i32) {
                                        String quote = Pattern.quote(str8.substring(i32, find.getRange().first));
                                        quote.getClass();
                                        sb.append(quote);
                                    }
                                    sb.append("([\\s\\S]+?)?");
                                    i32 = find.getRange().last + 1;
                                }
                                if (i32 < str8.length()) {
                                    String quote2 = Pattern.quote(str8.substring(i32));
                                    quote2.getClass();
                                    sb.append(quote2);
                                }
                                sb.append("$");
                                paramQuery.paramRegex = NavDeepLink.saveWildcardInRegex(sb.toString());
                                linkedHashMap.put(str7, paramQuery);
                            }
                        }
                        return linkedHashMap;
                    case 3:
                        String str9 = navDeepLink.uriPattern;
                        if (str9 == null) {
                            return null;
                        }
                        Uri parse2 = Uri.parse(str9);
                        parse2.getClass();
                        if (parse2.getFragment() == null) {
                            return null;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Uri parse3 = Uri.parse(str9);
                        parse3.getClass();
                        String fragment = parse3.getFragment();
                        StringBuilder sb2 = new StringBuilder();
                        fragment.getClass();
                        NavDeepLink.buildRegex(fragment, arrayList2, sb2);
                        return new Pair(arrayList2, sb2.toString());
                    case 4:
                        Pair pair = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        return (pair == null || (list3 = (List) pair.first) == null) ? new ArrayList() : list3;
                    case 5:
                        Pair pair2 = (Pair) navDeepLink.fragArgsAndRegex$delegate.getValue();
                        if (pair2 != null) {
                            return (String) pair2.second;
                        }
                        return null;
                    case 6:
                        String str10 = (String) navDeepLink.fragRegex$delegate.getValue();
                        if (str10 != null) {
                            return new Regex(str10, 0);
                        }
                        return null;
                    default:
                        String str11 = navDeepLink.mimeTypeRegex;
                        if (str11 != null) {
                            return new Regex(str11);
                        }
                        return null;
                }
            }
        });
        if (str != null) {
            StringBuilder sb = new StringBuilder("^");
            if (!SCHEME_PATTERN.containsMatchIn(str)) {
                String pattern = SCHEME_REGEX.nativePattern.pattern();
                pattern.getClass();
                sb.append(pattern);
            }
            Pattern compile = Pattern.compile("(\\?|#|$)");
            compile.getClass();
            Matcher matcher = compile.matcher(str);
            matcher.getClass();
            MatcherMatchResult matcherMatchResult = !matcher.find(0) ? null : new MatcherMatchResult(matcher, str);
            if (matcherMatchResult != null) {
                buildRegex(str.substring(0, matcherMatchResult.getRange().first), arrayList, sb);
                this.isExactDeepLink = (WILDCARD_REGEX.containsMatchIn(sb) || PATH_REGEX.containsMatchIn(sb)) ? false : true;
                sb.append("($|(\\?(.)*)|(#(.)*))");
            }
            this.pathRegex = saveWildcardInRegex(sb.toString());
        }
        if (str3 == null) {
            return;
        }
        Pattern compile2 = Pattern.compile("^[\\s\\S]+/[\\s\\S]+$");
        compile2.getClass();
        if (!compile2.matcher(str3).matches()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m("The given mimeType ", str3, " does not match to required \"type/subtype\" format"));
            throw null;
        }
        Pattern compile3 = Pattern.compile("/");
        compile3.getClass();
        StringsKt.requireNonNegativeLimit(0);
        Matcher matcher2 = compile3.matcher(str3);
        if (matcher2.find()) {
            ArrayList arrayList2 = new ArrayList(10);
            int i9 = 0;
            do {
                arrayList2.add(str3.subSequence(i9, matcher2.start()).toString());
                i9 = matcher2.end();
            } while (matcher2.find());
            arrayList2.add(str3.subSequence(i9, str3.length()).toString());
            list = arrayList2;
        } else {
            list = IntOffsetKt.listOf(str3.toString());
        }
        if (!list.isEmpty()) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    list2 = CollectionsKt.take(list, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list2 = EmptyList.INSTANCE;
        this.mimeTypeRegex = StringsKt__StringsJVMKt.replace$default(ViewSizeResolver.CC.m("^(", (String) list2.get(0), "|[*]+)/(", (String) list2.get(1), "|[*]+)$"), "*|[*]", "[\\s\\S]");
    }

    public static void buildRegex(String str, ArrayList arrayList, StringBuilder sb) {
        int i = 0;
        for (MatcherMatchResult find = FILL_IN_PATTERN.find(0, str); find != null; find = find.next()) {
            MatchGroup matchGroup = find.groups.get(1);
            matchGroup.getClass();
            arrayList.add(matchGroup.value);
            if (find.getRange().first > i) {
                String quote = Pattern.quote(str.substring(i, find.getRange().first));
                quote.getClass();
                sb.append(quote);
            }
            String pattern = PATH_REGEX.nativePattern.pattern();
            pattern.getClass();
            sb.append(pattern);
            i = find.getRange().last + 1;
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
            navType.put(bundle, str, navType.mo804parseValue(str2));
        }
    }

    public static String saveWildcardInRegex(String str) {
        return (StringsKt.contains(str, "\\Q", false) && StringsKt.contains(str, "\\E", false)) ? StringsKt__StringsJVMKt.replace$default(str, ".*", "\\E.*\\Q") : StringsKt.contains(str, "\\.\\*", false) ? StringsKt__StringsJVMKt.replace$default(str, "\\.\\*", ".*") : str;
    }

    public final int calculateMatchingPathSegments$navigation_common_release(Uri uri) {
        String str;
        if (uri == null || (str = this.uriPattern) == null) {
            return 0;
        }
        List<String> pathSegments = uri.getPathSegments();
        Uri parse = Uri.parse(str);
        parse.getClass();
        return CollectionsKt.intersect(pathSegments, parse.getPathSegments()).size();
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof NavDeepLink)) {
            NavDeepLink navDeepLink = (NavDeepLink) obj;
            if (Intrinsics.areEqual(this.uriPattern, navDeepLink.uriPattern) && Intrinsics.areEqual(this.action, navDeepLink.action) && Intrinsics.areEqual(this.mimeType, navDeepLink.mimeType)) {
                return true;
            }
        }
        return false;
    }

    public final ArrayList getArgumentsNames$navigation_common_release() {
        Collection values = ((Map) this.queryArgsMap$delegate.getValue()).values();
        ArrayList arrayList = new ArrayList();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(((ParamQuery) it.next()).arguments, arrayList);
        }
        return CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) this.pathArgs, (Iterable) arrayList), (Iterable) this.fragArgs$delegate.getValue());
    }

    public final Bundle getMatchingArguments(Uri uri, LinkedHashMap linkedHashMap) {
        MatcherMatchResult matchEntire;
        MatcherMatchResult matchEntire2;
        String str;
        uri.getClass();
        linkedHashMap.getClass();
        Regex regex = (Regex) this.pathPattern$delegate.getValue();
        if (regex != null && (matchEntire = regex.matchEntire(uri.toString())) != null) {
            Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
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
                            IntOffsetKt.throwIndexOverflow();
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
                if (Data.Companion.missingRequiredArguments(linkedHashMap, new NavDeepLink$$ExternalSyntheticLambda9(0, bundleOf)).isEmpty()) {
                    return bundleOf;
                }
            }
        }
        return null;
    }

    public final boolean getMatchingPathArguments(MatcherMatchResult matcherMatchResult, Bundle bundle, Map map) {
        ArrayList arrayList = this.pathArgs;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            String str = null;
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
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
                parseArgument(bundle, str2, str, (NavArgument) map.get(str2));
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
    /* JADX WARN: Type inference failed for: r22v0, types: [java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean getMatchingQueryArguments(android.net.Uri r20, android.os.Bundle r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDeepLink.getMatchingQueryArguments(android.net.Uri, android.os.Bundle, java.util.Map):boolean");
    }

    public final int hashCode() {
        String str = this.uriPattern;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.action;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }
}
