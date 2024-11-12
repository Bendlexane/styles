<?xml version="1.0" encoding="utf-8"?>
<style xmlns="http://purl.org/net/xbiblio/csl" class="in-text" version="1.0" et-al-min="3" et-al-use-first="1" page-range-format="minimal" demote-non-dropping-particle="sort-only" default-locale="en-US">
  <!-- This style was edited with the Visual CSL Editor (https://editor.citationstyles.org/visualEditor/) -->
  <info>
    <title>Botanical Journal of the Linnean Society</title>
    <title-short>Bot. J. Linn. Soc.</title-short>
    <id>http://www.zotero.org/styles/botanical-journa-of-the-linnean-society</id>
    <link href="https://academic.oup.com/botlinnean" rel="self"/>
    <author>
      <name>Manuel Tiburtini</name>
    </author>
    <category citation-format="author-date"/>
    <category field="biology"/>
    <issn>0024-4074</issn>
    <eissn>1095-8339</eissn>
    <updated>2024-11-12T21:46:52+00:00</updated>
    <rights license="http://creativecommons.org/licenses/by-sa/3.0/">This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 License</rights>
  </info>
  <macro name="editor">
    <names variable="editor" prefix="In: ">
      <name name-as-sort-order="all" sort-separator=" " initialize-with="" delimiter=", " delimiter-precedes-last="always"/>
      <label form="short" prefix=" (" suffix=")"/>
    </names>
  </macro>
  <macro name="author">
    <group suffix=".">
      <names variable="author">
        <name name-as-sort-order="all" sort-separator=" " initialize-with="" delimiter=", " delimiter-precedes-last="always" delimiter-precedes-et-al="never"/>
        <et-al font-style="italic"/>
        <label form="short" prefix=" " strip-periods="true"/>
        <substitute>
          <names variable="editor"/>
          <text macro="title"/>
        </substitute>
      </names>
    </group>
  </macro>
  <macro name="author-short">
    <names variable="author">
      <name form="short" name-as-sort-order="all" and="text" sort-separator=" " initialize-with="" delimiter=", " delimiter-precedes-last="never" delimiter-precedes-et-al="never"/>
      <et-al font-style="italic"/>
      <substitute>
        <names variable="editor"/>
        <text macro="title"/>
      </substitute>
    </names>
  </macro>
  <macro name="title">
    <choose>
      <if type="bill book graphic legal_case motion_picture report song" match="any">
        <text variable="title" font-style="italic" text-case="title"/>
      </if>
      <else>
        <text variable="title"/>
      </else>
    </choose>
  </macro>
  <macro name="year-date">
    <date date-parts="year" form="text" variable="issued"/>
  </macro>
  <macro name="publisher">
    <group delimiter=": ">
      <text variable="publisher-place" suffix=":"/>
      <text variable="publisher"/>
    </group>
  </macro>
  <macro name="edition">
    <choose>
      <if is-numeric="edition">
        <group delimiter=" ">
          <number variable="edition" form="ordinal"/>
          <text term="edition" form="short"/>
        </group>
      </if>
      <else>
        <text variable="edition" suffix="."/>
      </else>
    </choose>
  </macro>
  <citation collapse="year" disambiguate-add-year-suffix="true" et-al-min="4" et-al-use-first="1">
    <sort>
      <key macro="year-date"/>
    </sort>
    <layout delimiter=", " prefix="(" suffix=")">
      <group delimiter=": ">
        <group delimiter=" ">
          <text macro="author-short"/>
          <text macro="year-date"/>
        </group>
        <text variable="locator"/>
      </group>
    </layout>
  </citation>
  <bibliography hanging-indent="true" et-al-min="4" et-al-use-first="3">
    <sort>
      <key macro="author"/>
      <key macro="year-date"/>
    </sort>
    <layout>
      <text macro="author"/>
      <text macro="title" prefix=" " suffix="."/>
      <choose>
        <if type="bill book graphic legal_case motion_picture report song" match="any">
          <group suffix="." prefix=" " delimiter=". ">
            <text macro="edition"/>
            <text macro="editor"/>
          </group>
          <text prefix=" " macro="publisher"/>
          <group suffix="." prefix=", ">
            <text macro="year-date"/>
            <text variable="page" prefix=":"/>
          </group>
        </if>
        <else-if type="chapter paper-conference" match="any">
          <group prefix=" " delimiter=". ">
            <group delimiter=": ">
              <text term="In" text-case="capitalize-first" suffix=": "/>
              <text macro="editor"/>
            </group>
            <text variable="container-title" font-style="italic" text-case="title"/>
            <text variable="volume" prefix="Vol "/>
            <text macro="edition"/>
            <group suffix="." delimiter=", ">
              <text macro="publisher"/>
              <date variable="issued">
                <date-part name="year"/>
              </date>
              <text variable="page" strip-periods="false" quotes="false" vertical-align="baseline"/>
            </group>
          </group>
        </else-if>
        <else-if type="article-newspaper article">
          <text variable="container-title" font-style="italic" prefix=" "/>
          <choose>
            <if variable="URL">
              <group delimiter=". " suffix=".">
                <text variable="URL"/>
                <group prefix="Published ">
                  <date variable="issued">
                    <date-part name="month" suffix=" "/>
                    <date-part name="day" suffix=", "/>
                    <date-part name="year"/>
                  </date>
                </group>
                <group>
                  <text term="accessed" text-case="capitalize-first" suffix=" "/>
                  <date variable="accessed">
                    <date-part name="month" suffix=" "/>
                    <date-part name="day" suffix=", "/>
                    <date-part name="year"/>
                  </date>
                </group>
              </group>
            </if>
            <else>
              <group delimiter=" " suffix=".">
                <text variable="volume" font-weight="bold"/>
                <choose>
                  <if variable="page">
                    <text variable="page" prefix=":"/>
                  </if>
                  <else>
                    <text variable="DOI" prefix=", DOI: "/>
                  </else>
                </choose>
              </group>
            </else>
          </choose>
        </else-if>
        <else>
          <text macro="editor" prefix=" " suffix="."/>
          <group prefix=" " suffix=".">
            <text variable="container-title" font-style="italic" form="long" strip-periods="true"/>
            <group delimiter=" " prefix=" ">
              <text macro="year-date" suffix=";"/>
              <text variable="volume" font-weight="bold"/>
            </group>
            <choose>
              <if variable="page">
                <text variable="page" prefix=":"/>
              </if>
            </choose>
          </group>
        </else>
      </choose>
    </layout>
  </bibliography>
</style>