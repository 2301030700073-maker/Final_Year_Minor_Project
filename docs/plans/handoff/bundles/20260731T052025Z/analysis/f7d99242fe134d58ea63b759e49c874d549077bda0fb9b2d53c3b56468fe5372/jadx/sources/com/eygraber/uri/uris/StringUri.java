package com.eygraber.uri.uris;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import com.eygraber.uri.PathSegments;
import com.eygraber.uri.Uri;
import com.eygraber.uri.parts.Part;
import com.eygraber.uri.parts.PathPart;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringUri extends AbstractHierarchicalUri {
    public final SynchronizedLazyImpl authorityPart$delegate;
    public final SynchronizedLazyImpl cachedFsi$delegate;
    public final SynchronizedLazyImpl cachedSsi$delegate;
    public final SynchronizedLazyImpl encodedAuthority$delegate;
    public final SynchronizedLazyImpl fragmentPart$delegate;
    public final SynchronizedLazyImpl isHierarchical$delegate;
    public final SynchronizedLazyImpl pathPart$delegate;
    public final SynchronizedLazyImpl pathSegments$delegate;
    public final SynchronizedLazyImpl queryPart$delegate;
    public final SynchronizedLazyImpl scheme$delegate;
    public final SynchronizedLazyImpl ssp$delegate;
    public final String uriString;

    public StringUri(String str) {
        str.getClass();
        this.uriString = str;
        final int i = 0;
        this.cachedSsi$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2;
                int i3 = i;
                StringUri stringUri = this.f$0;
                switch (i3) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i2 = cachedSsi + 1) && str2.charAt(i2) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i4 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i4) : str3.substring(i4, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i5 = cachedSsi4 + 2;
                        if (length > i5 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i5) == '/') {
                            int i6 = cachedSsi4 + 3;
                            for (int i7 = i6; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i6, i7);
                            }
                            r6 = str4.substring(i6, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i2 = 1;
        this.cachedFsi$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i3 = i2;
                StringUri stringUri = this.f$0;
                switch (i3) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i4 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i4) : str3.substring(i4, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i5 = cachedSsi4 + 2;
                        if (length > i5 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i5) == '/') {
                            int i6 = cachedSsi4 + 3;
                            for (int i7 = i6; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i6, i7);
                            }
                            r6 = str4.substring(i6, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i3 = 2;
        this.isHierarchical$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i3;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i4 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i4) : str3.substring(i4, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i5 = cachedSsi4 + 2;
                        if (length > i5 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i5) == '/') {
                            int i6 = cachedSsi4 + 3;
                            for (int i7 = i6; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i6, i7);
                            }
                            r6 = str4.substring(i6, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i4 = 3;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i4;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i5 = cachedSsi4 + 2;
                        if (length > i5 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i5) == '/') {
                            int i6 = cachedSsi4 + 3;
                            for (int i7 = i6; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i6, i7);
                            }
                            r6 = str4.substring(i6, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i5 = 4;
        this.scheme$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i5;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i6 = cachedSsi4 + 3;
                            for (int i7 = i6; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i6, i7);
                            }
                            r6 = str4.substring(i6, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i6 = 5;
        this.ssp$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i6;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i7 = i62; i7 < length; i7++) {
                                char charAt = str4.charAt(i7);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i7);
                            }
                            r6 = str4.substring(i62, i7);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i7 = 6;
        this.authorityPart$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i7;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i8 = cachedSsi5 + 1;
                            if (i8 != str5.length() && str5.charAt(i8) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i8 = 7;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i8;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i9 = 8;
        this.encodedAuthority$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i9;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i10 = 9;
        this.pathPart$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i10;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i11 = 10;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i11;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i12 = 11;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i12;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i13 = 12;
        this.pathSegments$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i13;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i14 = 13;
        this.queryPart$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i14;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i15 = 14;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i15;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i16 = 15;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i16;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i17 = 16;
        this.fragmentPart$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i17;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i18 = 17;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i18;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
        final int i19 = 18;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.StringUri$$ExternalSyntheticLambda0
            public final /* synthetic */ StringUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22;
                int i32 = i19;
                StringUri stringUri = this.f$0;
                switch (i32) {
                    case 0:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, ':', 0, 6));
                    case 1:
                        return Integer.valueOf(StringsKt.indexOf$default(stringUri.uriString, '#', stringUri.getCachedSsi(), 4));
                    case 2:
                        int cachedSsi = stringUri.getCachedSsi();
                        String str2 = stringUri.uriString;
                        if (cachedSsi == -1 || (str2.length() != (i22 = cachedSsi + 1) && str2.charAt(i22) == '/')) {
                            r5 = true;
                        }
                        return Boolean.valueOf(r5);
                    case 3:
                        return Boolean.valueOf(stringUri.getCachedSsi() == -1);
                    case 4:
                        int cachedSsi2 = stringUri.getCachedSsi();
                        if (cachedSsi2 == -1) {
                            return null;
                        }
                        return stringUri.uriString.substring(0, cachedSsi2);
                    case 5:
                        int cachedSsi3 = stringUri.getCachedSsi();
                        int intValue = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart = Part.NULL;
                        String str3 = stringUri.uriString;
                        int i42 = cachedSsi3 + 1;
                        return DBUtil.fromEncoded(intValue == -1 ? str3.substring(i42) : str3.substring(i42, intValue));
                    case 6:
                        String str4 = stringUri.uriString;
                        int cachedSsi4 = stringUri.getCachedSsi();
                        str4.getClass();
                        int length = str4.length();
                        int i52 = cachedSsi4 + 2;
                        if (length > i52 && str4.charAt(cachedSsi4 + 1) == '/' && str4.charAt(i52) == '/') {
                            int i62 = cachedSsi4 + 3;
                            for (int i72 = i62; i72 < length; i72++) {
                                char charAt = str4.charAt(i72);
                                if (charAt != '/' && charAt != '\\' && charAt != '#' && charAt != '?') {
                                }
                                r6 = str4.substring(i62, i72);
                            }
                            r6 = str4.substring(i62, i72);
                        }
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getDecoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) stringUri.authorityPart$delegate.getValue()).getEncoded();
                    case 9:
                        int cachedSsi5 = stringUri.getCachedSsi();
                        String str5 = stringUri.uriString;
                        if (cachedSsi5 > -1) {
                            int i82 = cachedSsi5 + 1;
                            if (i82 != str5.length() && str5.charAt(i82) == '/') {
                                r6 = RelationUtil.parsePath(str5, cachedSsi5);
                            }
                        } else {
                            r6 = RelationUtil.parsePath(str5, cachedSsi5);
                        }
                        PathPart pathPart = PathPart.NULL;
                        return DebugUtils.fromEncoded(r6);
                    case 10:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getDecoded();
                    case 11:
                        return ((PathPart) stringUri.pathPart$delegate.getValue()).getEncoded();
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return (PathSegments) ((PathPart) stringUri.pathPart$delegate.getValue()).pathSegments$delegate.getValue();
                    case 13:
                        String str6 = stringUri.uriString;
                        int indexOf$default = StringsKt.indexOf$default(str6, '?', stringUri.getCachedSsi(), 4);
                        if (indexOf$default != -1) {
                            int intValue2 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                            if (intValue2 == -1) {
                                r6 = str6.substring(indexOf$default + 1);
                            } else if (intValue2 >= indexOf$default) {
                                r6 = str6.substring(indexOf$default + 1, intValue2);
                            }
                        }
                        Part.EmptyPart emptyPart3 = Part.NULL;
                        return DBUtil.fromEncoded(r6);
                    case 14:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getDecoded();
                    case OffsetKt.Horizontal /* 15 */:
                        return ((Part) stringUri.queryPart$delegate.getValue()).getEncoded();
                    case 16:
                        int intValue3 = ((Number) stringUri.cachedFsi$delegate.getValue()).intValue();
                        Part.EmptyPart emptyPart4 = Part.NULL;
                        return DBUtil.fromEncoded(intValue3 != -1 ? stringUri.uriString.substring(intValue3 + 1) : null);
                    case 17:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getDecoded();
                    default:
                        return ((Part) stringUri.fragmentPart$delegate.getValue()).getEncoded();
                }
            }
        });
    }

    @Override // com.eygraber.uri.Uri
    public final Uri.Builder buildUpon() {
        boolean booleanValue = ((Boolean) this.isHierarchical$delegate.getValue()).booleanValue();
        SynchronizedLazyImpl synchronizedLazyImpl = this.fragmentPart$delegate;
        SynchronizedLazyImpl synchronizedLazyImpl2 = this.scheme$delegate;
        if (!booleanValue) {
            Uri.Builder builder = new Uri.Builder(0, false);
            builder.scheme = (String) synchronizedLazyImpl2.getValue();
            builder.opaquePart = (Part) this.ssp$delegate.getValue();
            builder.fragment = (Part) synchronizedLazyImpl.getValue();
            return builder;
        }
        Uri.Builder builder2 = new Uri.Builder(0, false);
        builder2.scheme = (String) synchronizedLazyImpl2.getValue();
        Part part = (Part) this.authorityPart$delegate.getValue();
        builder2.opaquePart = null;
        builder2.authority = part;
        PathPart pathPart = (PathPart) this.pathPart$delegate.getValue();
        builder2.opaquePart = null;
        builder2.path = pathPart;
        Part part2 = (Part) this.queryPart$delegate.getValue();
        builder2.opaquePart = null;
        builder2.query = part2;
        builder2.fragment = (Part) synchronizedLazyImpl.getValue();
        return builder2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Uri) && Intrinsics.areEqual(this.uriString, obj.toString());
    }

    public final int getCachedSsi() {
        return ((Number) this.cachedSsi$delegate.getValue()).intValue();
    }

    @Override // com.eygraber.uri.Uri
    public final String getEncodedAuthority() {
        return (String) this.encodedAuthority$delegate.getValue();
    }

    @Override // com.eygraber.uri.Uri
    public final List getPathSegments() {
        return (List) this.pathSegments$delegate.getValue();
    }

    public final int hashCode() {
        return this.uriString.hashCode();
    }

    public final String toString() {
        return this.uriString;
    }
}
