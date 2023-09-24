import React from "react";
import useSWR from "swr";
import ForYouImages from "../../components/for-you/for-you-images";
import ForYouBanner from "../../components/for-you/for-you-banner";
import ForYouDescription from '../../components/for-you-details/for-you-description'

const ForYou = (props) => {
  return (
    <>
      <ForYouBanner />
      <ForYouDescription />
      <ForYouImages />
    </>
  );
};
export default ForYou;
